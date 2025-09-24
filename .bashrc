# Path exports
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Git branch parsing function
function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

# Enable command substitution in prompts
setopt PROMPT_SUBST

# Set up prompt with proper zsh syntax
PROMPT='%F{green}%n %F{blue}[%*] %f%~
%F{yellow}$(parse_git_branch)%f$ '

# Aliases
alias ll='ls -la'
alias ~="cd ~"
alias cp='cp -iv'
alias mv='mv -iv'
