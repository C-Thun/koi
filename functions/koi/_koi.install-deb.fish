function _koi.install-deb -a url
  set -l tmpfile install-deb-tmp-(date +%Y%m%d-%H)-(random).deb
  wget -c $url -O /tmp/$tmpfile -o /tmp/install-deb.log

  koi exec-cmd "dpkg -i /tmp/$tmpfile" y

  rm -rf /tmp/$tmpfile
end