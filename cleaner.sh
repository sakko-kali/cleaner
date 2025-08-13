#!/bin/bash


case $1 in
  "eng"|"Eng")
    cd ~/Downloads
    mkdir -p "Photo" "Archives" "Video" "Documents" "Others" "Scripts";;
  *)
    cd ~/Загрузки
    mkdir -p "Фото" "Архивы" "Видео" "Прочее" "Документы" "Скрипты";;
esac


##############################################
while true; do
   array=(*)                                                    #getting array of current files
   for i in "${array[@]}"; do
     if [[ -f "$i" && ! "$i" == *.crdownload ]]; then           #skip files for download in real time
       if [[ $1 ]]; then                                        #Checking for english directory
         case "$i" in
          *.png|*.jpg|*.jpeg|*.gif)
              if [[ -f "Photo/$i" ]]; then                       #if file has same name with current file - change it
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Photo/"$name"
              else
                mv -n "$i" Photo
              fi;;
          *.zip|*.7zip|*.rar|*.gz|*.tar)
              if [[ -f "Archives/$i" ]]; then
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Archives/"$name"
              else
                mv -n "$i" Archives
              fi;;
          *.mp4|*.webm|*.mov|*.mkv)
              if [[ -f "Video/$i" ]]; then
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Video/"$name"
              else
                mv -n "$i" Video
              fi;;
           *.txt|*.pdf|*.docx)
              if [[ -f "Documents/$i" ]]; then
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Documents/"$name"
              else
                mv -n "$i" Documents
              fi;;
           *.sh|*.py|*.js|*.php|*.rb|*.pl|*.lua|*.md)
              if [[ -f "Scripts/$i" ]]; then
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Scripts/"$name"
              else
                mv -n "$i" Scripts
              fi;;
           *)
              if [[ -f "Others/$i" ]]; then
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Others/"$name"
              else
                mv -n "$i" Others
              fi;;
           esac
       else
         case "$i" in
          *.png|*.jpg|*.jpeg|*.gif)
              name="${i%.*}_$(date +%T).${i##*.}"
              mv -n "$i" Фото/"$name";;
          *.zip|*.7zip|*.rar|*.gz|*.tar)
              if [[ -f "Архивы/$i" ]]; then
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Архивы/"$name"
              else
                mv -n "$i" Архивы
              fi;;
          *.mp4|*.webm|*.mov|*.mkv)
              if [[ -f "Видео/$i" ]]; then
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Видео/"$name"
              else
                mv -n "$i" Видео
              fi;;
           *.txt|*.pdf|*.docx)
              if [[ -f "Документы/$i" ]]; then
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Документы/"$name"
              else
                mv -n "$i" Документы
              fi;;
           *.sh|*.py|*.js|*.php|*.rb|*.pl|*.lua|*.md)
              if [[ -f "Скрипты/$i" ]]; then
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Скрипты/"$name"
              else
                mv -n "$i" Скрипты
              fi;;
           *)
              if [[ -f "Прочее/$i" ]]; then
                name="${i%.*}_$(date +%T).${i##*.}"
                mv -n "$i" Прочее/"$name"
              else
                mv -n "$i" Прочее
              fi;;
           esac
      fi
     fi
   done
   sleep 15
done
