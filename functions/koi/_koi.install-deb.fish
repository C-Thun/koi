function _koi.install-deb -d '下载并安装某个网络上的deb包' -a url
  echo install-deb $url
  # local file=${1##*/}
  # wget -c $1 -O /tmp/${file} -o /tmp/install-deb.log
  # sudo dpkg -i /tmp/${file}
  # rm /tmp/${file}
  # >/tmp/install-deb.log < /dev/null
end