function _koi.look-port -a port
  netstat -tnlp | grep :$port
end