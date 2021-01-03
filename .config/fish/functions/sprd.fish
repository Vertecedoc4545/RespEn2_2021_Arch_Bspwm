# Defined in - @ line 1
function sprd --wraps='sudo pacman -Rns (pacman -Qdtq)' --description 'alias sprd=sudo pacman -Rns (pacman -Qdtq)'
  sudo pacman -Rns (pacman -Qdtq) $argv;
end
