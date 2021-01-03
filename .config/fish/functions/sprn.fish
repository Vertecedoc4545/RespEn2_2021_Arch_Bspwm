# Defined in - @ line 1
function sprn --wraps='sudo pacman -Rns' --description 'alias sprn=sudo pacman -Rns'
  sudo pacman -Rns $argv;
end
