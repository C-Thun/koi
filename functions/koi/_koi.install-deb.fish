function _koi.install-deb -a url
  set -l tmpfile install-deb-tmp-(date +%Y%m%d-%H)-(random).deb
  wget -c $url -O /tmp/$tmpfile -o /tmp/install-deb.log
  if test (id -u) -eq 0
    set -l cmd dpkg
  else
    set -l cmd sudo dpkg
  end

  koi exec-cmd "$cmd -i /tmp/$tmpfile"

  rm -rf /tmp/$tmpfile
  echo install-deb $url
end