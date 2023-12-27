## DevOps \ Домашнее задание №10 - Jenkins by SSH

## Создать 2 задачи Jenkins: 
  - Первая задача должна собирать Docker образ с заданным тегом (например v1.0), на сборочной ноде, и пушить его в registry
  - Вторая Job должен пулить (подтягивать) Docker образ с требуемым тегом из registry и запускать контейнер на продовой ноде



## Сервер build:
  - #### Подготовка инфраструктуры:
    - настройка возможности входа по паролю для root по сети (для jenkins)
    - sudo apt install git -y
    - sudo apt install docker.io -y
    - cd /etc
    - git clone https://github.com/spring108/jenkins_ssh.git
    - cd /etc/jenkins_ssh
  - #### Файлы для build:
    - /etc/jenkins_ssh/index-template.html - шаблон
    - /etc/jenkins_ssh/Dockerfile - описание образа
    - bash /etc/jenkins_ssh/build.sh - скрипт сборщика, должен запускаться jenkins


## Сервер prod:
  - #### Подготовка инфраструктуры:
    - настройка возможности входа по паролю для root по сети (для jenkins)
    - sudo apt install git -y
    - sudo apt install docker.io -y
    - cd /etc
    - git clone https://github.com/spring108/jenkins_ssh.git
    - cd /etc/jenkins_ssh
  - #### Файлы для build:
    - bash /etc/jenkins_ssh/prod.sh - скрипт прода, должен запускаться jenkins
