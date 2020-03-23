function _koi.build-lib -d 'build/rebuild klib' -a uri
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
