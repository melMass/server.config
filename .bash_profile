# .bash_profile
echo "BASH PROFILE"
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
. "$HOME/.cargo/env"

~/dev/nu/nu

