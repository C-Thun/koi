function _koi.build-bin-link -a dir
  # 遍历目录，把缺失的软链补上
  if not test -z $dir; and test (count ls $dir) -gt 2
    for file in (string split ' ' (echo $dir/*))
      chmod +x $file

      set -l bin_name (basename (echo $file | sed 's/\.[^.]*$//'))
      if not test -e ~/local/bin/$bin_name
        ln -s $file ~/local/bin/$bin_name
      end
    end
  end
end
