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
autoload $path/functions/kit
autoload $path/functions/scarlet

# Load init

# Set completions for koi
complete -c koi -f
for subcommand in (_koi._command)
  complete -c koi -f -a $subcommand -n "__fish_use_subcommand"
end

# Set completions for kit
complete -c kit -f
for subcommand in (_kit._command)
  complete -c kit -f -a $subcommand -n "__fish_use_subcommand"
end

# Set completions for scarlet
complete -c scarlet -f
for subcommand in (_scarlet._command)
  complete -c scarlet -f -a $subcommand -n "__fish_use_subcommand"
end
