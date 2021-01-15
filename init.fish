# koi initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

# Create apps dir
if not test -e $HOME/apps/bin
  mkdir -p $HOME/apps/bin
end
set -xg PATH $HOME/apps/bin $PATH

# 清除bin目录下的无效软链
if test (count (string split ' ' (ls $HOME/apps/bin))) -gt 0
  for file in (string split ' ' (echo $HOME/apps/bin/*))
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

# Set Hooks
if not test -z "$autoclear_history"; and test $autoclear_history -gt 0
  function _hook_autoclear_history --on-process-exit %self
      builtin history clear
      echo Session history scrubbed.  Goodbye
  end
end

# Set completions for koi
koi update-completions
