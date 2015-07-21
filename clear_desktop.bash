#! /bin/bash
# look at quote escaping file names. 
ls ~/Desktop/* &>/dev/null
if [ $? -eq 0 ]
then 
  FILENAME=desktop_backup_$(date | tr " " "_") 
  zip ~/$FILENAME ~/Desktop/* 1>/dev/null
  rm $(ls ~/Desktop/*)
  echo "desktop files were moved to: $(ls ~/$FILENAME.*)"
fi
