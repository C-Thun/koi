function _koi.nohup -a func
  if test -z $func
    echo Usage: koi nohup \<func\>
    return $OMF_UNKNOWN_OPT
  end

  echo "#!/usr/bin/fish\n$func" > /tmp/nohup-runner
  chmod +x /tmp/nohup-runner
  nohup /tmp/nohup-runner &
end