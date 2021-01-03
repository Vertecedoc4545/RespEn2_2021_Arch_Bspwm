# Defined in - @ line 1
function gdcm --wraps='sudo nvim /etc/gdm/custom.conf' --description 'alias gdcm=sudo nvim /etc/gdm/custom.conf'
  sudo nvim /etc/gdm/custom.conf $argv;
end
