function gcd --description "return to git root"
  set -l root (git rev-parse --show-toplevel)
  set -l git_root_status $status
  if test $git_root_status -eq 0
    builtin cd $root
    return $status
  else
    return $git_root_status
  end
end
