# Defined in - @ line 1
function zshc --wraps='nvim ~/.zshrc' --description 'alias zshc=nvim ~/.zshrc'
  nvim ~/.zshrc $argv;
end
