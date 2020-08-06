# koi initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

# Create user { local/bin } dir
if not test -e $HOME/.local/bin
  mkdir -p $HOME/.local/bin
end
set -xg PATH $HOME/.local/bin $PATH

# 清除bin目录下的无效软链
if test (count (string split ' ' (ls $HOME/.local/bin))) -gt 0
  for file in (string split ' ' (echo $HOME/.local/bin/*))
    if not test -e $file
      rm $file
    end
  end
end

# PEV support
if test -f $HOME/.koi_pev.fish
  source $HOME/.koi_pev.fish
end

# Autoload
autoload $path/functions/koi
autoload $path/functions/koi/_specs

# Set completions for koi
koi update-completions
