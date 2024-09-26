function _koi.force-load -a dir
  if test (count (string split ' ' (ls $dir))) -gt 0
    for file in (string split ' ' (echo $dir/*))
      source $file
    end
  end
end