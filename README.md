# PavelSemyannikov_microservices
PavelSemyannikov microservices repository


# Выполнено ДЗ № 12
 - Основное ДЗ
 -  Задание со *

## В процессе сделано:
 - Настроена интеграция с travis в новом репозитории
 - Изучены основы docker и базовые команды
 - Изучены отличия между образом и контейнером
 
 
 # Выполнено ДЗ № 13

 - Основное ДЗ
 - Задание со *

## В процессе сделано:
 - Изучены основы написание Dockerfile
 - Написаны конфиги и сценарии для: 
   packer (создание шаблона инстанса с установленны докером)
   terraform (создание интансов докер-хостов в количестве задаваемом переменной count)
   ansible (плэйбуки для провижионера в packer и деплоя контейнеров на развернутые терраформом инстансы)
   
 Note: 
 - В ansible используется gce.py
 - В gce.ini указано, что искать нужно только машины с тэгом docker-host, который устанавливается terraform'ом
 - Плэйбуки выполняются только на целевых машинах с докером.

## Как запустить проект: 
(все команды от корня репозитория):
 - cd docker-monolith/infra && packer build --var-file packer/variables.json packer/docker-host.json
 - cd docker-monolith/infra/terraform/docker-host && terraform apply
 - cd docker-monolith/infra/ansible && ansible-playbook playbooks/deploy-reddit-container.yml


# Выполнено ДЗ № 14

 - [ ] Основное ДЗ

## В процессе сделано:
 - Изучены основы создания Dockerfile
 - Изучены параметры командной строки docker


 # Выполнено ДЗ № 15

 - [ ] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - Изучены основы сетей в docker
 - Изучены основы docker-compose
 
 Note1: Немного о docker-compose override https://habr.com/ru/company/otus/blog/337688/
 
 Note2: base-name в docker-compose, по умолчанию, создается на основе имени папки проекта. Переопределить его можно с помощью переменной COMPOSE_PROJECT_NAME, например, задав её в .env файле или указав при запуске ключем -p base_name


 # Выполнено ДЗ № 16

 - [ ] Основное ДЗ
 
## В процессе сделано:
 - В папке gitlab-ci/infra сделаны конфиги для terraform и плэйбуки для ansible для быстрого развертывания gitlab-ci
 
     cd gitlab-ci/infra/terraform/gitlab-ci && terraform apply
 
     cd gitlab-ci/infra/ansible && ansible-playbook playbooks/create_gitlab-ci_full.yml
     
 - Изучены основы работы с gitlab
 - Изучены основы построения pipeline
 
 
 # Выполнено ДЗ № 17

 - [ ] Основное ДЗ
 
## В процессе сделано:
 - Изучены основы Prometheus 

 Репозиторий на dockerhub https://hub.docker.com/u/mryoyo
 
 
 # Выполнено ДЗ № 18

 - [ ] Основное ДЗ
 
## В процессе сделано:
 - Продолжено изучение Prometheus
 - Изучены основы работы с Grafana
 - Изучены основы алертинга

 Репозиторий на dockerhub https://hub.docker.com/u/mryoyo
 
 # Выполнено ДЗ № 19

 - [ ] Основное ДЗ

## В процессе сделано:
 - Изучены основы работы с ELK и Fluend
 - Изучены основы работы с трассировками
 
 # Выполнено ДЗ № 20

 - [ ] Основное ДЗ
 
## В процессе сделано:
 - Изучены основы Kubernetes
 - Пройден The-hard-way

## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [ ] Выставил label с темой домашнего задания
 
# Выполнено ДЗ № 21

 - [ ] Основное ДЗ

## В процессе сделано:
 - Испробована работа с minikube
 - Создан kubernetes-кластер в GKE и в нем запущен reddit

## Как проверить работоспособность:
 - Скрин работающего приложения https://raw.githubusercontent.com/otus-devops-2019-02/PavelSemyannikov_microservices/kubernetes-2/kubernetes/reddit-in-gke-hw-kubernetes-2.png
 
 # Выполнено ДЗ № 22

 - [ ] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - Изучены основы работы с GKE
 - Изучены основы работы с сервисами, политиками, секретами и хранилищами в kubernetes
 - Для задания со * создан манифест ui-ingress-secret.yml в котором описан сертификат и ключ для инресса

## Как проверить работоспособность:
 - Перейти по ссылке https://34.98.111.253/

# Выполнено ДЗ № 23

 - [ ] Основное ДЗ
 
## В процессе сделано:
 - Изучены и опробованы на практике основы Helm
 - Изучена работа с Kubernetes, helm и gitlab. Построение pipilene и выкатка на различные окружения.

# Выполнено ДЗ № 24

 - [ ] Основное ДЗ
 
## В процессе сделано:
 - Изучена работа с Prometheus в k8s
 - Изучена работа с EFK в k8s
