# mkdir+cd together!!
function mkcd
  mkdir -p -- $argv &&
    cd -P -- $argv
end
