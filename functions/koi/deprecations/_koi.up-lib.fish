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
    if test -d $HOME/apps/klib/$path
      koi renew-repos $HOME/apps/klib/$path
    else
      git -C $HOME/apps/klib clone $uri
    end
  else
    # 全部更新
    for path in (ls $HOME/apps/klib)
      echo - Renew repository: [ $path ]
      koi renew-repos $HOME/apps/klib/$path
    end
  end

  # 移除 apps/bin 下的软链
  for file in (ls $HOME/apps/bin)
    if test -L $HOME/apps/bin/$file
      and not test -e $HOME/apps/bin/$file
      rm $HOME/apps/bin/$file
    end
  end

  # 重新构建
  set -l klib_count (count (string split ' ' (ls apps/bin/)))
  if test $klib_count -gt 0
    for file in (echo $HOME/apps/klib/*/bin/*)
      chmod +x $file

      set rootname (basename (echo $file | sed 's/\.[^.]*$//'))
      if not test -e $HOME/apps/bin/$rootname
        ln -s $file $HOME/apps/bin/$rootname
      end
    end
  else
    echo "There are not klib installed now."
  end
end
