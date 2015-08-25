#! /bin/bash

#! /bin/bash

if find "$HOME/Desktop" -maxdepth 1 -type f | grep -v '/\.' &>/dev/null
then
  DATE=$(date | tr " " "_")
  FILENAME="desktop_backup_$DATE"
  TMP="$HOME/Desktop/tmp_$DATE"
  NEW_PATH="$HOME/Documents/$FILENAME"

  # Move desktop files that are not hidden into a tmp folder
  mkdir $TMP
  find "$HOME/Desktop" -not -path "$HOME/Desktop/.*" -maxdepth 1 -type f -exec mv {} $TMP \;

  # move tmp folder to documents and rename it
  mv $TMP $NEW_PATH 
  echo "Desktop files were moved to: $NEW_PATH"
fi
