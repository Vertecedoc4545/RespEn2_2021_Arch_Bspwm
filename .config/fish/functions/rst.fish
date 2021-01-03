# Defined in - @ line 1
function rst --wraps='pkill -USR1 -x' --description 'alias rst=pkill -USR1 -x'
  pkill -USR1 -x $argv;
end
