# Defined in - @ line 1
function sprnc --wraps='sudo pacman -Rnsc' --description 'alias sprnc=sudo pacman -Rnsc'
  sudo pacman -Rnsc $argv;
end
