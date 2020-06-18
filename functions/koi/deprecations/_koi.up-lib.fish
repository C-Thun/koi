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
    if test -d $HOME/.local/klib/$path
      koi renew-repos $HOME/.local/klib/$path
    else
      git -C $HOME/.local/klib clone $uri
    end
  else
    # 全部更新
    for path in (ls $HOME/.local/klib)
      echo - Renew repository: [ $path ]
      koi renew-repos $HOME/.local/klib/$path
    end
  end

  # 移除 .local/bin 下的软链
  for file in (ls $HOME/.local/bin)
    if test -L $HOME/.local/bin/$file
      and not test -e $HOME/.local/bin/$file
      rm $HOME/.local/bin/$file
    end
  end

  # 重新构建
  set -l klib_count (count (string split ' ' (ls .local/bin/)))
  if test $klib_count -gt 0
    for file in (echo $HOME/.local/klib/*/bin/*)
      chmod +x $file

      set rootname (basename (echo $file | sed 's/\.[^.]*$//'))
      if not test -e $HOME/.local/bin/$rootname
        ln -s $file $HOME/.local/bin/$rootname
      end
    end
  else
    echo "There are not klib installed now."
  end
end
