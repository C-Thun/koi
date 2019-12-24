function _koi.apply-lib -a uri
  if test "$uri"
    set -l name (string match -r '([^\/]+)\.git$' $uri)
    set -l path $name[2]

    # 导入项目
    if test -d $path
      kit renew-repos ~/local/klib/$path
    else
      git -C ~/local/klib clone $uri
    end
  end

  # 重新构建
  for file in (ls ~/local/klib/*/bin)
    echo $file
  end
end