# Defined in - @ line 1
function syeg --wraps='sudo systemctl enable gdm' --description 'alias syeg=sudo systemctl enable gdm'
  sudo systemctl enable gdm $argv;
end
