## Cleaner for Linux 🧹

___

## About:
- A simple cleaner for download directory, real-time file transfer.
- For every filetype have creating his own directory.
- simple, clean, comfortable
___
## Preview:

### Before:

![before](items/before.png?raw=true)

### After:

![before](items/After.png?raw=true)

---
## Installation:

>For _ENGLISH_ directory (if you have "Downloads" directory)

### 1. Download cleaner.sh script

### 2. Usage:  `sudo ./cleaner.sh [OPTIONS...]`
```sh

cd Downloads  #or other directory when you download it
sudo chmod +x cleaner.sh
./cleaner.sh

```

### 3. Add in cron for automatically run

>You need to correct path of your script
>
> Default is: 
`/home/username/Downloads/cleaner.sh`

### change the "username" to your own

```shell

(crontab -l; echo "@reboot /home/username/Downloads/cleaner.sh eng") | crontab -

```
___
## Done! thx for using

___
# Installation For "ru" directory

>Для русскоязычных директорий (если папка загрузки называется "Загрузки")

___
### 1. Скачиваем скрипт с расширением .sh

### 2. Используем команды:  
```sh

cd Загрузки  #Директория может отличатся если у вас другая папка для загрузки.
sudo chmod +x cleaner.sh
./cleaner.sh

```

### 3. Добавляем в cron для автозапуска

>Нужен правильный путь до файла будте внимательны.
>
> По умолчанию: 
`/home/username/Downloads/cleaner.sh`

### Поменяйте "username" на свой 

```shell

(crontab -l; echo "@reboot /home/username/Downloads/cleaner.sh eng") | crontab -

```
___

## Готово! спасибо за внимание
