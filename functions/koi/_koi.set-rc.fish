function _koi.set-rc -a name value
  if test (count (string split ' ' (ls $dir))) -gt 0
    for file in (string split ' ' (echo $dir/*))
      echo $file
    end
  end
end
