#!/bin/bash

if [ -f ~/.PROJECT ]; then
  source ~/.PROJECT
fi

echo $PROJECT_DIR

i3-msg "workspace 3:; append_layout ~/.config/i3/ws03.json"

(termite -d $PROJECT_DIR &)
(termite -d $PROJECT_DIR &)
(termite &)
