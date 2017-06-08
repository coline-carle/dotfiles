function codespace --description "codespace <project>"
  set base_directory "$HOME/coding/"
  set project $argv[1]
  # tmux detach > /dev/null 
  # tmux list-session -F #{session_name}

  if tmux has-session -t $project 2>/dev/null
    tmux attach -t $project
  else
    cd $base_directory/$project
    and tmux new-session -s $project
  end 
end

