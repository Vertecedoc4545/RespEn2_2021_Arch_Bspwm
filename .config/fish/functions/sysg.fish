# Defined in - @ line 1
function sysg --wraps='sudo systemctl start gdm' --description 'alias sysg=sudo systemctl start gdm'
  sudo systemctl start gdm $argv;
end
