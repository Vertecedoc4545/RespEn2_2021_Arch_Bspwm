# Defined in - @ line 1
function syrg --wraps='sudo systemctl restart gdm' --description 'alias syrg=sudo systemctl restart gdm'
  sudo systemctl restart gdm $argv;
end
