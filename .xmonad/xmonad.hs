  -- Base
import           System.Directory
import           System.Exit                         (exitSuccess)
import           System.IO                           (hPutStrLn)
import           XMonad
import qualified XMonad.StackSet                     as W

    -- Actions
import           XMonad.Actions.CopyWindow           (kill1)
import           XMonad.Actions.CycleWS              (Direction1D (..),
                                                      WSType (..), moveTo,
                                                      nextScreen, prevScreen,
                                                      shiftNextScreen,
                                                      shiftPrevScreen, shiftTo,
                                                      toggleWS)
import           XMonad.Actions.GridSelect
import           XMonad.Actions.MouseResize
import           XMonad.Actions.Promote
import           XMonad.Actions.RotSlaves            (rotAllDown, rotSlavesDown)
import qualified XMonad.Actions.Search               as S
import           XMonad.Actions.WindowGo             (runOrRaise)
import           XMonad.Actions.WithAll              (killAll, sinkAll)

    -- Data
import           Data.Char                           (isSpace, toUpper)
import qualified Data.Map                            as M
import           Data.Maybe                          (fromJust, isJust)
import           Data.Monoid
import           Data.Tree

    -- Hooks
import           XMonad.Hooks.DynamicLog             (PP (..), dynamicLogWithPP,
                                                      shorten, wrap,
                                                      xmobarColor, xmobarPP)
import           XMonad.Hooks.EwmhDesktops
import           XMonad.Hooks.ManageDocks            (ToggleStruts (..),
                                                      avoidStruts,
                                                      docksEventHook,
                                                      manageDocks)
import           XMonad.Hooks.ManageHelpers          (doCenterFloat,
                                                      doFullFloat, isFullscreen)
import           XMonad.Hooks.ServerMode
import           XMonad.Hooks.SetWMName
import           XMonad.Hooks.WorkspaceHistory

    -- Layouts
import           XMonad.Layout.Accordion
import           XMonad.Layout.GridVariants          (Grid (Grid))
import           XMonad.Layout.ResizableTile
import           XMonad.Layout.SimplestFloat
import           XMonad.Layout.Spiral
import           XMonad.Layout.Tabbed
import           XMonad.Layout.ThreeColumns

    -- Layouts modifiers
import           XMonad.Layout.LayoutModifier
import           XMonad.Layout.LimitWindows          (decreaseLimit,
                                                      increaseLimit,
                                                      limitWindows)
import           XMonad.Layout.Magnifier
import           XMonad.Layout.MultiToggle           (EOT (EOT), mkToggle,
                                                      single, (??))
import qualified XMonad.Layout.MultiToggle           as MT (Toggle (..))
import           XMonad.Layout.MultiToggle.Instances (StdTransformers (MIRROR, NBFULL, NOBORDERS))
import           XMonad.Layout.NoBorders
import           XMonad.Layout.Renamed
import           XMonad.Layout.ShowWName
import           XMonad.Layout.Simplest
import           XMonad.Layout.Spacing
import           XMonad.Layout.SubLayouts
import qualified XMonad.Layout.ToggleLayouts         as T (ToggleLayout (Toggle),
                                                           toggleLayouts)
import           XMonad.Layout.WindowArranger        (WindowArrangerMsg (..),
                                                      windowArrange)
import           XMonad.Layout.WindowNavigation

   -- Utilities
import           XMonad.Util.EZConfig                (mkKeymap)
import           XMonad.Util.NamedScratchpad
import           XMonad.Util.Run                     (runProcessWithInput,
                                                      safeSpawn, spawnPipe)
import           XMonad.Util.SpawnOnce

myFont :: String
myFont = "Iosevka nf:size=12"

myModMask :: KeyMask
myModMask = mod4Mask        -- Sets modkey to super/windows key

myBorderWidth :: Dimension
myBorderWidth = 2           -- Sets border width for windows

myNormColor :: String
myNormColor   = "#282c34"   -- Border color of normal windows

myFocusColor :: String
myFocusColor  = "#46d9ff"   -- Border color of focused windows

windowCount :: X (Maybe String)
windowCount = gets $ Just . show . length . W.integrate' . W.stack . W.workspace . W.current . windowset

myStartupHook :: X ()
myStartupHook = do
  spawnOnce "fehbg &"
  spawnOnce "sxhkd &"
  spawnOnce "dunst &"
  spawnOnce "picom --experimental-backends &"
  spawnOnce "uim-xim &"
  spawnOnce "libinput-gestures &"
  spawnOnce "lxpolkit &"
  spawnOnce "xfce4-power-manager &"
  spawnOnce "redshift &"
  spawnOnce "trayer --edge top --align right --widthtype request --padding 6 --SetDockType true --SetPartialStrut true --expand true --monitor 1 --transparent true --alpha 0 --tint 0x282c34  --height 22 &"
  setWMName "LG3D"

myColorizer :: Window -> Bool -> X (String, String)
myColorizer = colorRangeFromClassName
                  (0x28,0x2c,0x34) -- lowest inactive bg
                  (0x28,0x2c,0x34) -- highest inactive bg
                  (0xc7,0x92,0xea) -- active bg
                  (0xc0,0xa7,0x9a) -- inactive fg
                  (0x28,0x2c,0x34) -- active fg

-- gridSelect menu layout
mygridConfig :: p -> GSConfig Window
mygridConfig colorizer = (buildDefaultGSConfig myColorizer)
    { gs_cellheight   = 40
    , gs_cellwidth    = 200
    , gs_cellpadding  = 6
    , gs_originFractX = 0.5
    , gs_originFractY = 0.5
    , gs_font         = myFont
    }

spawnSelected' :: [(String, String)] -> X ()
spawnSelected' lst = gridselect conf lst >>= flip whenJust spawn
    where conf = def
                   { gs_cellheight   = 40
                   , gs_cellwidth    = 200
                   , gs_cellpadding  = 6
                   , gs_originFractX = 0.5
                   , gs_originFractY = 0.5
                   , gs_font         = myFont
                   }

myAppGrid = [ ("Audacity", "audacity")
                 , ("Deadbeef", "deadbeef")
                 , ("Emacs", "emacsclient -c -a emacs")
                 , ("Firefox", "firefox")
                 , ("Geany", "geany")
                 , ("Geary", "geary")
                 , ("Gimp", "gimp")
                 , ("Kdenlive", "kdenlive")
                 , ("LibreOffice Impress", "loimpress")
                 , ("LibreOffice Writer", "lowriter")
                 , ("OBS", "obs")
                 , ("PCManFM", "pcmanfm")
                 ]

myScratchPads :: [NamedScratchpad]
myScratchPads = [ NS "terminal" spawnTerm findTerm manageTerm
                , NS "mocp" spawnMocp findMocp manageMocp
                , NS "calculator" spawnCalc findCalc manageCalc
                ]
  where
    spawnTerm  = "$TERM -t scratchpad"
    findTerm   = title =? "scratchpad"
    manageTerm = customFloating $ W.RationalRect l t w h
               where
                 h = 0.9
                 w = 0.9
                 t = 0.95 -h
                 l = 0.95 -w
    spawnMocp  = "$TERM -t mocp -e mocp"
    findMocp   = title =? "mocp"
    manageMocp = customFloating $ W.RationalRect l t w h
               where
                 h = 0.9
                 w = 0.9
                 t = 0.95 -h
                 l = 0.95 -w
    spawnCalc  = "qalculate-gtk"
    findCalc   = className =? "Qalculate-gtk"
    manageCalc = customFloating $ W.RationalRect l t w h
               where
                 h = 0.5
                 w = 0.4
                 t = 0.75 -h
                 l = 0.70 -w

mySpacing :: Integer -> l a -> XMonad.Layout.LayoutModifier.ModifiedLayout Spacing l a
mySpacing i = spacingRaw True (Border i i i i) True (Border i i i i) True

spacingNum = 5

tall     = renamed [Replace "tall"]
           $ smartBorders
           $ windowNavigation
           $ subLayout [] (smartBorders Simplest)
           $ limitWindows 12
           $ mySpacing spacingNum
           $ ResizableTall 1 (3/100) (55/100) []

monocle  = renamed [Replace "monocle"]
           $ noBorders
           $ windowNavigation
           $ subLayout [] (smartBorders Simplest)
           $ limitWindows 20 Full

-- Theme for showWName which prints current workspace when you change workspaces.
myShowWNameTheme :: SWNConfig
myShowWNameTheme = def
    { swn_font              = "xft:Ubuntu:bold:size=60"
    , swn_fade              = 1.0
    , swn_bgcolor           = "#1c1f24"
    , swn_color             = "#ffffff"
    }

-- The layout hook
myLayoutHook = avoidStruts $ mouseResize $ windowArrange
  $ mkToggle (NBFULL ?? NOBORDERS ?? EOT) myDefaultLayout
  where
  myDefaultLayout = lessBorders (Combine Difference Screen OnlyScreenFloat) tall
    ||| monocle

myWorkspaces = [" 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 ", " 0 "]
myWorkspaceIndices = M.fromList $ zip myWorkspaces ([1..9] ++ [0])

clickable ws = "<action=xdotool key super+"++show i++">"++ws++"</action>"
    where i = fromJust $ M.lookup ws myWorkspaceIndices

myManageHook :: XMonad.Query (Data.Monoid.Endo WindowSet)
myManageHook = composeAll . concat $ [
    [ className =? c --> doFloat | c <- onesToBeFloat ]
  , [ className =? c --> doShift (head myWorkspaces) | c <- onesBelongTo1 ]
  , [ className =? c --> doShift (myWorkspaces !! 2) | c <- onesBelongTo3 ]
  , [ className =? c --> doShift (myWorkspaces !! 4) | c <- onesBelongTo5 ]
  ] where
    onesToBeFloat = ["Crow Translate"]
    onesBelongTo1 = ["mpv"]
    onesBelongTo3 = ["discord", "TelegramDesktop", "VK", "Element"]
    onesBelongTo5 = ["zoom"]

myKeys' = \c -> mkKeymap c [
    ("M-S-r", spawn "xmonad --recompile; xmonad --restart")
  , ("M-M1-S-r", spawn "xmonad --restart")
  , ("M-S-q", io exitSuccess)
  , ("M-S-/", spawn "~/.xmonad/xmonad_keys.sh")

  -- kill
  , ("M-c", kill1)
  , ("M-S-a", killAll)

  -- cycle to prev/next screen
  , ("M-,", prevScreen)
  , ("M-.", nextScreen)

  -- move active client to prev/next screen
  , ("M-S-,", do
      shiftPrevScreen
      prevScreen
    )
  , ("M-S-.", do
      shiftNextScreen
      nextScreen
    )

  -- cycle to prev/next workspace / toggle recent
  , ("M-h", moveTo Prev NonEmptyWS)
  , ("M-l", moveTo Next NonEmptyWS)
  , ("M-o", toggleWS)

  -- move active client to prev/next workspace
  , ("M-S-h", shiftTo Prev NonEmptyWS)
  , ("M-S-l", shiftTo Next NonEmptyWS)

  -- Resize viewed windows to the correct size
  --   , ((modm, xK_n), refresh)

  -- move focus
  , ("M-j", windows W.focusDown)
  , ("M-k", windows W.focusUp)

  -- Move focus to the master window
  -- , ("M-m", windows W.focusMaster)

  -- mastering
  , ("M-x", promote)
  , ("M-S-x", windows W.swapMaster)

  -- moving and stuff
  , ("M-S-j", windows W.swapDown)
  , ("M-S-k", windows W.swapUp)
  , ("M-S-h", sendMessage Shrink)
  , ("M-S-l", sendMessage Expand)
  -- , ("M-S-<Tab>", rotSlavesDown)
  -- , ("M-C-<Tab>", rotAllDown)

  -- go back to tiling
  , ("M-w", withFocused $ windows . W.sink)

  -- increase/decrease spacing
  -- , ("C-M1-j", decWindowSpacing 4)         -- Decrease window spacing
  -- , ("C-M1-k", incWindowSpacing 4)         -- Increase window spacing
  -- , ("C-M1-h", decScreenSpacing 4)         -- Decrease screen spacing
  -- , ("C-M1-l", incScreenSpacing 4)         -- Increase screen spacing

  -- KB_GROUP Grid Select (CTR-g followed by a key)
  -- , ("C-g g", spawnSelected' myAppGrid)                 -- grid select favorite apps
  -- , ("C-g t", goToSelected $ mygridConfig myColorizer)  -- goto selected window
  -- , ("C-g b", bringSelected $ mygridConfig myColorizer) -- bring selected window


  -- layouts
  , ("M-v", sendMessage NextLayout)

  -- fullscreen
  , ("M-f", sendMessage (MT.Toggle NBFULL) >> sendMessage ToggleStruts)

  -- KB_GROUP Increase/decrease windows in the master pane or the stack
  , ("M-i", sendMessage (IncMasterN 1))
  , ("M-S-i", sendMessage (IncMasterN (-1)))

  -- KB_GROUP Sublayouts
  -- This is used to push windows to tabbed sublayouts, or pull them out of it.
  -- , ("M-C-h", sendMessage $ pullGroup L)
  -- , ("M-C-l", sendMessage $ pullGroup R)
  -- , ("M-C-k", sendMessage $ pullGroup U)
  -- , ("M-C-j", sendMessage $ pullGroup D)
  -- , ("M-C-m", withFocused (sendMessage . MergeAll))
  -- , ("M-C-u", withFocused (sendMessage . UnMerge))
  -- , ("M-C-/", withFocused (sendMessage . UnMergeAll))
  -- , ("M-C-.", onGroup W.focusUp')    -- Switch focus to next tab
  -- , ("M-C-,", onGroup W.focusDown')  -- Switch focus to prev tab

  -- KB_GROUP Scratchpads
  -- Toggle show/hide these programs.  They run on a hidden workspace.
  -- When you toggle them to show, it brings them to your current workspace.
  -- Toggle them to hide and it sends them back to hidden workspace (NSP).
  -- , ("C-s t", namedScratchpadAction myScratchPads "terminal")
  -- , ("C-s m", namedScratchpadAction myScratchPads "mocp")
  -- , ("C-s c", namedScratchpadAction myScratchPads "calculator")
  ] where
  nonNSP = WSIs (return (\ws -> W.tag ws /= "NSP"))
  nonEmptyNonNSP = WSIs (return (\ws -> isJust (W.stack ws) && W.tag ws /= "NSP"))

myKeysVanilla conf@XConfig {XMonad.modMask = modm} = M.fromList
  [((m .|. modm, k), windows $ f i)
  | (i, k) <- zip (XMonad.workspaces conf) ([xK_1 .. xK_9] ++ [xK_0])
  , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]
  ]

myKeys = myKeys' <+> myKeysVanilla

main :: IO ()
main = do
  xmproc0 <- spawnPipe "xmobar -x 0 $HOME/.config/xmobar/xmobarrc0"
  xmproc1 <- spawnPipe "xmobar -x 1 $HOME/.config/xmobar/xmobarrc1"
  -- xmproc2 <- spawnPipe "xmobar -x 2 $HOME/.config/xmobar/xmobarrc2"
  xmonad $ ewmh def
      { manageHook          = myManageHook <+> namedScratchpadManageHook myScratchPads <+> manageDocks
      , handleEventHook     = docksEventHook -- <+> fullscreenEventHook
      , modMask             = myModMask
      , keys                = myKeys
      , startupHook         = myStartupHook
      , layoutHook          = showWName' myShowWNameTheme myLayoutHook
      , workspaces          = myWorkspaces
      , borderWidth         = myBorderWidth
      , normalBorderColor   = myNormColor
      , focusedBorderColor  = myFocusColor
      , logHook = dynamicLogWithPP $ namedScratchpadFilterOutWorkspacePP $ xmobarPP
            { ppOutput = \x -> hPutStrLn xmproc0 x -- xmobar on monitor 1
                            >> hPutStrLn xmproc1 x -- xmobar on monitor 2
                            -- >> hPutStrLn xmproc2 x -- xmobar on monitor 3
            , ppCurrent = xmobarColor "#50FA7B" "#44475A"
            , ppHidden = xmobarColor "#6272A4" "" . clickable
            , ppVisible = xmobarColor "#CAA9FA" "" . clickable
            , ppTitle = xmobarColor "#F8F8F2" "" . shorten 60
            , ppUrgent = xmobarColor "#FF6E67" ""
            , ppExtras = [windowCount]
            , ppOrder = \(ws:l:t:ex) -> [ws,l] ++ ex ++ [t]
            }
      }
