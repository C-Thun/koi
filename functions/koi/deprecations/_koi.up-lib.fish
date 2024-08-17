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
    if test -d $LOCAL_DIR/klib/$path
      koi renew-repos $LOCAL_DIR/klib/$path
    else
      git -C $LOCAL_DIR/klib clone $uri
    end
  else
    # 全部更新
    for path in (ls $LOCAL_DIR/klib)
      echo - Renew repository: [ $path ]
      koi renew-repos $LOCAL_DIR/klib/$path
    end
  end

  # 移除 $LOCAL_BIN 下的软链
  for file in (ls $LOCAL_BIN)
    if test -L $LOCAL_BIN/$file
      and not test -e $LOCAL_BIN/$file
      rm $LOCAL_BIN/$file
    end
  end

  # 重新构建
  set -l klib_count (count (string split ' ' (ls .local/bin/)))
  if test $klib_count -gt 0
    for file in (echo $LOCAL_DIR/klib/*/bin/*)
      chmod +x $file

      set rootname (basename (echo $file | sed 's/\.[^.]*$//'))
      if not test -e $LOCAL_BIN/$rootname
        ln -s $file $LOCAL_BIN/$rootname
      end
    end
  else
    echo "There are not klib installed now."
  end
end
