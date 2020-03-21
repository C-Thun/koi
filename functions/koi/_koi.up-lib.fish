function _koi.up-lib -d 'update/install klib' -a uri
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
      koi renew-repos ~/local/klib/$path
    else
      git -C ~/local/klib clone $uri
    end
  else
    # 全部更新
    for path in (ls ~/local/klib)
      echo - Renew repository: [ $path ]
      koi renew-repos ~/local/klib/$path
    end
  end

  # 移除local/bin下的软链
  for file in (ls ~/local/bin)
    if test -L ~/local/bin/$file
      and not test -e ~/local/bin/$file
      rm ~/local/bin/$file
    end
  end

  # 重新构建
  set -l klib_count (count ls local/bin/)
  if test $klib_count -gt 2
    for file in (echo ~/local/klib/*/bin/*)
      chmod +x $file

      set rootname (basename (echo $file | sed 's/\.[^.]*$//'))
      if not test -e ~/local/bin/$rootname
        ln -s $file ~/local/bin/$rootname
      end
    end
  else
    echo "There are not klib installed now."
  end

end
