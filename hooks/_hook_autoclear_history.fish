if test $autoclear_history -gt 0
  function _hook_autoclear_history --on-process-exit %self
      builtin history clear
      echo Session history scrubbed.  Goodbye
  end
end
