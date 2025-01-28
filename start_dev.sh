#!/bin/bash
SESSION="mark'dapp"
BASE_PATH=$(pwd)
PROJECT_DIR="$BASE_PATH/markdproject"
APP_DIR="$BASE_PATH/markiosk"
APP_PORT=5173

function start_sessions {
  brave_init="brave-browser --profile-directory='Profile 14' 'http://localhost:$APP_PORT' > /dev/null 2>&1 &"

  # Start IDE with opening folders
  pulsar $PROJECT_DIR $APP_DIR $APP_DIR/CRUISELOG.md

  # Start tmux
  tmux new-session -d -s $SESSION

  # Create a new window for the development server
  tmux send-keys -t $SESSION:0.0 "cd $APP_DIR" C-m
  tmux send-keys -t $SESSION:0.0 "pnpm install" C-m
  tmux send-keys -t $SESSION:0.0 "pnpm exec prisma generate" C-m
  tmux send-keys -t $SESSION:0.0 "pnpm dev --port $APP_PORT" C-m

  # Split the development server window horizontally
  tmux split-window -h -t $SESSION:0
  tmux send-keys -t $SESSION:0.1 "cd $PROJECT_DIR" C-m
  tmux send-keys -t $SESSION:0.1 "$brave_init"  C-m

  # Attach to the tmux session to see the output
  tmux attach-session -t $SESSION
}

### Needs TMUX checking condition in here  ###
#if [ TMUX ]; then
#  echo "Detach from this tmux session first"
#else
#  start_sessions;
#fi

start_sessions;

#current_ver=$(nvm current)
#ideal_ver="v16.20.2"
#if [ "$current_ver" != "$ideal_ver" ]; then
#  nvm use lts/gallium;
#  current_ver=$(nvm current)
#  echo "$current_ver"
#  start_sessions;
#else
#  echo "Starting sessions..."
#  start_sessions $1;
#fi
