function _koi.build-bin-link -a dir
  if not test -z "$dir"; and test (count (string split ' ' (ls $dir))) -gt 0
    for file in (string split ' ' (echo $dir/*))
      chmod +x $file

      set -l bin_name (basename (echo $file | sed 's/\.[^.]*$//'))
      if not test -e $HOME/.local/bin/$bin_name
        ln -s $file $HOME/.local/bin/$bin_name
      end
    end
  end
end
