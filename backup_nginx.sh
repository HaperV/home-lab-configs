#!/bin/bash

# Получаем текущую дату в формате ГГГГ-ММ-ДД
DATE=$(date +%Y-%m-%d)

# Директория для сохранения бэкапов
BACKUP_DIR="/home/backup_user/backups"

# Создаем архив с веб-файлами и конфигами Nginx
tar -czf ${BACKUP_DIR}/nginx_backup_${DATE}.tar.gz /var/www/html /etc/nginx

# Выводим сообщение об успехе
echo "Backup created: nginx_backup_${DATE}.tar.gz"
