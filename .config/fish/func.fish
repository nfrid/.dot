# mkdir+cd together!!
function mkcd
  mkdir -p -- $argv &&
    cd -- $argv
end
