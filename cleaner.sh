#!/bin/bash

cd ~/Загрузки

mkdir -p "Фото" "Архивы" "Видео" "Файлы" "Прочее"

while true; do
   array=(*)
   for i in "${array[@]}"; do
     if [[ -f "$i" && ! "$i" == *.crdownload ]]; then
       case "$i" in
        *.png|*.jpg|*.jpeg|*.gif)
            mv "$i" Фото;;
        *.zip|*.7zip|*.rar|*.gz|*.tar)
            mv "$i" Архивы;;
        *.mp4|*.webm|*.mov|*.mkv)
            mv "$i" Видео;;
         *.txt|*.pdf|*.docx)
            mv "$i" Файлы;;
         *)
            mv "$i" Прочее;;
         esac
     fi
   done
   sleep 15
done
