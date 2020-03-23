function _koi.dir-func -a func
  set -l tmp (functions $func)
  set -l tmp (string match -r '\# Defined in ([^\@]+)' $tmp[1])
  echo (dirname $tmp[2])
end