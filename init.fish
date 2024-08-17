# koi initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

# 指示自身目录
set -l DIR (dirname (status -f))
set -xg KOI_DIR $DIR

# ------ INFO: 这里老方案，将废弃 ---------------
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

# ------ INFO: 新方案 ---------------
# 之后的koi发展将以 ~/.local 作为一个关键目录
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
set -xg LOCAL_DIR $HOME/.local
set -xg LOCAL_BIN $HOME/.local/bin

# PEV support
if test -f $HOME/.koi_pev.fish
  source $HOME/.koi_pev.fish
end

if test -f $HOME/.koi.fish
  source $HOME/.koi.fish
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
