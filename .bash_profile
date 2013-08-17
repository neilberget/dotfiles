# export PS1="\u[\!]:\w> "

# ssh-add ~/.ssh/lmd_id_rsa

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*

# Load ~/.bash_prompt, ~/.exports, ~/.aliases, ~/.functions and ~/.extra
# ~/.extra can be used for settings you don’t want to commit
for file in bash_prompt exports aliases functions extra; do
  file="$HOME/.$file"
  [ -e "$file" ] && source "$file"
done

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob
bind "set completion-ignore-case on"

# Intelligent command completion
complete -d cd pushd;
complete -u finger mail;
complete -v set unset;


##
# Your previous /Users/neil/.bash_profile file was backed up as /Users/neil/.bash_profile.macports-saved_2012-11-11_at_11:34:06
##

# MacPorts Installer addition on 2012-11-11_at_11:34:06: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/local/git/bin:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Allows Ctrl-s to be using to do forward search (in middle of Ctrl-R search)
stty -ixon

. ~/code/liquidprompt/liquidprompt
