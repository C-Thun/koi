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

# 清除bin目录下的无效软链
if test (count (string split ' ' (ls $HOME/local/bin))) -gt 0
  for file in (string split ' ' (echo $HOME/local/bin/*))
    if not test -e $file
      rm $file
    end
  end
end


# Autoload
autoload $path/functions/koi
autoload $path/functions/koi/_specs

# Set completions for koi
complete -c koi -f
for subcommand in (_koi.command)
  complete -c koi -f -a $subcommand -n "__fish_use_subcommand"
end

