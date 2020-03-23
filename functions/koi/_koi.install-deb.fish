function _koi.install-deb -a url
  echo install-deb $url
  # local file=${1##*/}
  # wget -c $1 -O /tmp/${file} -o /tmp/install-deb.log
  # sudo dpkg -i /tmp/${file}
  # rm /tmp/${file}
  # >/tmp/install-deb.log < /dev/null
end