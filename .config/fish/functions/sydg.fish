# Defined in - @ line 1
function sydg --wraps='sudo systemctl disable gdm' --description 'alias sydg=sudo systemctl disable gdm'
  sudo systemctl disable gdm $argv;
end
