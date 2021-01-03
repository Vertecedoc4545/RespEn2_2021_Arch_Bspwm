# Defined in - @ line 1
function spsy --wraps='sudo pacman -Syyu' --description 'alias spsy=sudo pacman -Syyu'
  sudo pacman -Syyu $argv;
end
