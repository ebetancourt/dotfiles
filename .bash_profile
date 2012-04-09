# Load ~/.bash_prompt, ~/.exports, ~/.aliases, ~/.functions and ~/.extra
# ~/.extra can be used for settings you don’t want to commit
for file in bash_prompt exports aliases functions extra elliot_custom; do
  file="$HOME/.$file"
  [ -e "$file" ] && source "$file"
done
unset file

# PATH=/Applications/MAMP/bin:/Applications/MAMP/bin/php/php5.3.6/bin:/Applications/MAMP/bin/apache2/bin:$PATH
PATH=~/bin:/usr/local/zend/bin:/usr/local/zend/mysql/bin:$PATH
LD_LIBRARY_PATH=/usr/local/zend/lib:$LD_LIBRARY_PATH

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults