

1. Устанвока Docker на сервере из открытых источников (репозитории ОС)
    1.1 Нобходимые доступы:
	- Репозитории ОС (Ubuntu, CentOS)
	- " *docker.com " , " *docker.io "
	- " *pypi.org " , " *python.org "


2. Сборка образов и запуск контейнеров по готовому файлу docker-compose.yaml
    На примере Ubuntu Server 22.04
        - Дисковое пространство: минимум 60гб.
	- Не устанавливаем предложенное ПО
	- Устанавливаем минимально необходимое ПО, такое как для - для работы сертификатов, загрузки ключей шифрования.
        
Пример последовательности комманд:

     # apt install ca-certificates curl gnupg
     # install -m 0755 -d /etc/apt/keyrings
     # curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
     # chmod a+r /etc/apt/keyrings/docker.gpg
     # echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
       $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
     # sudo apt-get update
     # apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
     # docker run hello-world
     # service docker status
     # cd $AIRFLOW_DIR (папка со скаченными файлами: "Dockerfile", "docker-compose.yaml", ".env" , "requirements.txt")
     # docker compose up -d