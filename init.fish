# koi initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

# Create user { local/bin } dir
if not test -e $HOME/local/bin
  mkdir -p $HOME/local/bin
end
set -x PATH $HOME/local/bin $PATH

# Autoload
autoload $path/functions/koi
autoload $path/functions/koi/_specs

# Set completions for koi
complete -c koi -f
for subcommand in (_koi.command)
  complete -c koi -f -a $subcommand -n "__fish_use_subcommand"
end
