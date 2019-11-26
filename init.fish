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


echo $path
# autoload $path/