import           Data.Monoid
import           System.Exit
import           XMonad

import qualified Data.Map                    as M
import           XMonad.Actions.CycleWS
import           XMonad.Hooks.EwmhDesktops
import qualified XMonad.Layout.ToggleLayouts
import qualified XMonad.StackSet
import qualified XMonad.StackSet             as W

myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

myClickJustFocuses :: Bool
myClickJustFocuses = False

myBorderWidth   = 2

myModMask       = mod4Mask

myWorkspaces    = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]

myNormalBorderColor  = "#282a36"
myFocusedBorderColor = "#ff79c6"

--------------------------------------------------------------------------------
myKeys conf@XConfig {XMonad.modMask = modm} = M.fromList $ [

  -- close focused window
  ((modm, xK_c), kill)

  -- Rotate through the available layout algorithms
  , ((modm, xK_v ), sendMessage NextLayout)

  -- toggle full
  , ( (modm, xK_f), sequence_ [
      -- make sure the window isn't floating (would be nice to remember floating state)
      XMonad.withFocused $ XMonad.windows . XMonad.StackSet.sink
      -- regular FULL toggle
    , XMonad.sendMessage XMonad.Layout.ToggleLayouts.ToggleLayout
    ])

  --  Reset the layouts on the current workspace to default
  , ((modm .|. shiftMask, xK_v ), setLayout $ XMonad.layoutHook conf)

  -- cycle to prev/next screen
  , ((modm, xK_comma), prevScreen)
  , ((modm, xK_period), nextScreen)

  -- move active client to prev/next screen
  , ((modm .|. shiftMask, xK_comma), shiftPrevScreen)
  , ((modm .|. shiftMask, xK_period), shiftNextScreen)

  -- cycle to prev/next workspace / toggle recent
  , ((modm, xK_h), moveTo Prev NonEmptyWS)
  , ((modm, xK_l), moveTo Next NonEmptyWS)
  , ((modm, xK_o), toggleWS)

  -- move active client to prev/next workspace
  , ((modm .|. shiftMask, xK_h), shiftTo Prev NonEmptyWS)
  , ((modm .|. shiftMask, xK_l), shiftTo Next NonEmptyWS)

  -- Resize viewed windows to the correct size
  -- , ((modm, xK_n), refresh)

  -- Move focus to the next window
  , ((modm, xK_j), windows W.focusDown)

  -- Move focus to the previous window
  , ((modm, xK_k), windows W.focusUp)

  -- Move focus to the master window
  -- , ((modm, xK_m), windows W.focusMaster)

  -- Swap the focused window and the master window
  , ((modm, xK_x), windows W.swapMaster)

  -- Swap the focused window with the next window
  , ((modm .|. shiftMask, xK_j), windows W.swapDown)

  -- Swap the focused window with the previous window
  , ((modm .|. shiftMask, xK_k), windows W.swapUp)

  -- Shrink the master area
  , ((modm .|. shiftMask, xK_h), sendMessage Shrink)

  -- Expand the master area
  , ((modm .|. shiftMask, xK_l), sendMessage Expand)

  -- Push window back into tiling
  , ((modm, xK_t), withFocused $ windows . W.sink)

  -- Increment the number of windows in the master area
  , ((modm, xK_i ), sendMessage (IncMasterN 1))

  -- Deincrement the number of windows in the master area
  , ((modm .|. shiftMask, xK_i), sendMessage (IncMasterN (-1)))

  -- Toggle the status bar gap
  -- Use this binding with avoidStruts from Hooks.ManageDocks.
  -- See also the statusBar function from Hooks.DynamicLog.
  --
  -- , ((modm              , xK_b     ), sendMessage ToggleStruts)

  -- Quit xmonad
  , ((modm .|. shiftMask, xK_q), io exitSuccess)

  -- Restart xmonad
  , ((modm .|. shiftMask, xK_q), spawn "xmonad --recompile; xmonad --restart")
  ] ++

  --
  -- mod-[1..9], Switch to workspace N
  -- mod-shift-[1..9], Move client to workspace N
  --
  [((m .|. modm, k), windows $ f i)
  | (i, k) <- zip (XMonad.workspaces conf) ([xK_1 .. xK_9] ++ [xK_0])
  , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]
  ]

myMouseBindings XConfig {XMonad.modMask = modm} = M.fromList

    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((modm, button1), \w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster)

    -- mod-button2, Raise the window to the top of the stack
    , ((modm, button2), \w -> focus w >> windows W.shiftMaster)

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((modm, button3), \w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster)

    -- you may also bind events to the mouse scroll wheel (button4 and button5)
    ]

--------------------------------------------------------------------------------
myLayoutHook = tiled ||| Mirror tiled ||| Full
  where
     -- default tiling algorithm partitions the screen into two panes
     tiled   = Tall nmaster delta ratio

     -- The default number of windows in the master pane
     nmaster = 1

     -- Default proportion of screen occupied by master pane
     ratio   = 1/2

     -- Percent of screen to increment by when resizing panes
     delta   = 3/100

--------------------------------------------------------------------------------
myManageHook :: ManageHook
myManageHook = composeAll . concat $ [
    [ className =? c --> doShift "1" | c <- onesBelongTo1 ]
  , [ className =? c --> doShift "3" | c <- onesBelongTo3 ]
  , [ className =? c --> doShift "5" | c <- onesBelongTo5 ]
  ] where
    onesBelongTo1 = ["mpv"]
    onesBelongTo3 = ["discord", "TelegramDesktop", "VK", "Element"]
    onesBelongTo5 = ["zoom"]

myEventHook = mempty <+> fullscreenEventHook

myLogHook = return ()

myStartupHook = do
  spawn "autostart"

--------------------------------------------------------------------------------
main = xmonad defaults

defaults = def {
      -- simple stuff
        focusFollowsMouse  = myFocusFollowsMouse,
        clickJustFocuses   = myClickJustFocuses,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,

      -- key bindings
        keys               = myKeys,
        mouseBindings      = myMouseBindings,

      -- hooks, layouts
        layoutHook         = myLayoutHook,
        manageHook         = myManageHook,
        handleEventHook    = myEventHook,
        logHook            = myLogHook,
        startupHook        = myStartupHook
    }

