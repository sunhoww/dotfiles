#!/bin/bash

if [ -f ~/.PROJECT ]; then
  source ~/.PROJECT
fi

echo $PROJECT_DIR

i3-msg "workspace 3:; append_layout ~/.config/i3/ws03.json"

(urxvt -cd $PROJECT_DIR &)
(urxvt -cd $PROJECT_DIR &)
(urxvt -cd $PROJECT_DIR -name main &)
