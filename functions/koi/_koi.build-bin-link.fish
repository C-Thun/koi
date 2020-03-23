function _koi.build-bin-link -a dir uri
  # 重新构建
  if test (count ls local/bin/) -gt 2
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
