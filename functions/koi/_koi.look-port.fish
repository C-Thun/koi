function _koi.look-port -a port
  koi exec-cmd "netstat -tnlp | grep :$port"
end