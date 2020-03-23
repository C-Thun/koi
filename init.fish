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

# Create user { local/klib } dir
if not test -e $HOME/local/klib
  mkdir -p $HOME/local/klib
end

# Autoload
autoload $path/functions/koi
autoload $path/functions/koi/_specs

# Set completions for koi
complete -c koi -f
for subcommand in (_koi._command)
  complete -c koi -f -a $subcommand -n "__fish_use_subcommand"
end

# Load init
# TODO: 待完成
# koi build-lib