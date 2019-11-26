# koi initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

if test not -e $HOME/local/bin
  mkdir -p $HOME/local/bin
end
set -x PATH $HOME/local/bin $PATH

if test not -e $HOME/local/klib
  mkdir -p $HOME/local/klib
end

autoload $path/functions/koi.deno
autoload $path/functions/koi.git
autoload $path/functions/scarlet

complete -c scarlet -f
for subcommand in (_scarlet._command)
  complete -c scarlet -f -a $subcommand -n "__fish_use_subcommand"
end

echo (_scarlet._command setup)
echo (_scarlet._command)
