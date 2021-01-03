# Defined in - @ line 1
function systg --wraps='sudo systemctl stop gdm' --description 'alias systg=sudo systemctl stop gdm'
  sudo systemctl stop gdm $argv;
end
