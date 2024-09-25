# koi initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

# 指示自身目录
set -l DIR (dirname (status -f))
set -xg KOI_DIR $DIR

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

# rc file support
if test -f $HOME/.koirc.fish
  source $HOME/.koirc.fish
end

# Autoload
autoload $KOI_DIR/functions/koi
autoload $KOI_DIR/functions/koi/_specs

# Set Hooks
if not test -z "$autoclear_history"; and test $autoclear_history -gt 0
  function _hook_autoclear_history --on-process-exit %self
      builtin history clear
      echo Session history scrubbed.  Goodbye
  end
end

# Set completions for koi
koi update-completions
