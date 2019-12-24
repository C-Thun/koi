function _koi.up-lib -a uri
  if test "$uri"

    set is_url (string match -r '^(http\:|https\:|git\@).*' $uri)
    if test "$is_url"
      set name (string match -r '([^\/]+)\.git$' $uri)
      set path $name[2]
    else
      set path $uri
    end

    # 导入项目
    if test -d ~/local/klib/$path
      kit renew-repos ~/local/klib/$path
    else
      git -C ~/local/klib clone $uri
    end
  else
    # 全部更新
    for path in (ls ~/local/klib)
      kit renew-repos ~/local/klib/$path
    end
  end

  # 重新构建
  for file in (ls ~/local/klib/*/bin)
    echo $file
  end
end
