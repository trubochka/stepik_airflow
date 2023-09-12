#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

# Создание пользователя
airflow users create -u admin -f Peter -l Parker -r Admin -e admin@example.org -p admin

# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver

