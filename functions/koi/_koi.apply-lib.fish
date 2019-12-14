function _koi.apply-lib -a uri
  if test "$uri"
    set -l name (string match -r '([^\/]+)\.git$' $uri)

    # 导入项目
    cd ~/local/klib
    if test -d $name[2]
      kit renew-repos $name[2]
    else
      git clone $uri
    end
  end

  # 重新构建
  for file in (ls ~/local/klib/*/bin)
    echo $file
  end
end