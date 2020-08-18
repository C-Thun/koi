function _hook_clear-history --on-process-exit %self
  if test $autoclear_history -gt 0
    builtin history clear
    echo Session history scrubbed.  Goodbye
  end
end
