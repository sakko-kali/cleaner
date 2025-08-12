#!/bin/bash


case $1 in
  "eng"|"Eng")
    cd ~/Downloads
    mkdir -p "Photo" "Archives" "Video" "Documents" "Others" "Scripts";;
  *)
    cd ~/Загрузки
    mkdir -p "Фото" "Архивы" "Видео" "Прочее" "Документы" "Скрипты";;
esac



while true; do
   array=(*)
   for i in "${array[@]}"; do
     if [[ -f "$i" && ! "$i" == *.crdownload ]]; then
       if [[ $1 ]]; then
         case "$i" in
          *.png|*.jpg|*.jpeg|*.gif)
              mv -n "$i" Photo;;
          *.zip|*.7zip|*.rar|*.gz|*.tar)
              mv -n "$i" Archives;;
          *.mp4|*.webm|*.mov|*.mkv)
              mv -n "$i" Video;;
           *.txt|*.pdf|*.docx)
              mv -n "$i" Documents;;
           *.sh|*.py|*.js|*.php|*.rb|*.pl|*.lua|*.md)
              mv -n "$i" Scripts;;
           *)
              mv -n "$i" Others;;
           esac
       else
         case "$i" in
          *.png|*.jpg|*.jpeg|*.gif)
              mv -n "$i" Фото;;
          *.zip|*.7zip|*.rar|*.gz|*.tar)
              mv -n "$i" Архивы;;
          *.mp4|*.webm|*.mov|*.mkv)
              mv -n "$i" Видео;;
           *.txt|*.pdf|*.docx)
              mv -n "$i" Документы;;
           *.sh|*.py|*.js|*.php|*.rb|*.pl|*.lua|*.md)
              mv -n "$i" Скрипты;;
           *)
              mv -n "$i" Прочее;;
           esac
      fi
     fi
   done
   sleep 15
done
