#! /bin/bash

ls ~/Desktop/* &>/dev/null
if [ $? -eq 0 ]
then
  FILENAME="desktop_backup_$(date | tr " " "_")"
  TMP="$HOME/Desktop/tmp_$(date | tr " " "_")"

  mkdir $TMP
  find "$HOME/Desktop" -maxdepth 1 -type f -exec mv {} $TMP \;
  mv $TMP "$HOME/Documents/$FILENAME"
  echo "desktop files were moved to: $HOME/Desktop/$FILENAME"
fi
