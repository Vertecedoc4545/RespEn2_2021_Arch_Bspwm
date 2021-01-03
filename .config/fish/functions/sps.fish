# Defined in - @ line 1
function sps --wraps='sudo pacman -S' --description 'alias sps=sudo pacman -S'
  sudo pacman -S $argv;
end
