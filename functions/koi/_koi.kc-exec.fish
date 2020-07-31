function _koi.kc-exec -a namespace name
  if test -z "$namespace"; or test -z "$name"; or test (count $args) -lt 3
    echo Usage: koi kc-exec \<namespace\> \<name\> ...\<cmd\>
    return $OMF_UNKNOWN_OPT
  end

  set -l pod (kubectl get pod -n $namespace|grep $name|awk '{print $1}')
  set -l action $args[3]
  set -l ti
  if test "$action" == "sh"; or test "$action" == "bash"
    set ti '-ti'
  end
  echo kubectl exec -n $namespace $pod $ti -- $argv[3..-1]
  # kubectl exec -n $namespace $pod $ti -- $argv[3..-1]
end