function _koi.build-bin-link -a dir
  if not test -z "$dir"; and test (count (string split ' ' (ls $dir))) -gt 0
    for file in (string split ' ' (echo $dir/*))
      if test -l $file
        continue
      end
      chmod +x $file

      set -l bin_name (basename (echo $file | sed 's/\.[^.]*$//'))
      if not test -e $HOME/apps/bin/$bin_name
        ln -s $file $HOME/apps/bin/$bin_name
      end
    end
  end
end
