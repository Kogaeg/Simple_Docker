## Part 1. Готовый докер

1) Проверил наличие docker-образа через `docker images`.

![alt text](src/img/image.png)

2) Запустил docker-образ и проверил что он запустился.

![alt text](src/img/image-1.png)

3) Посмотрел через `docker inspect` и нашел размер контейнера, список замапленных портов и ip.

![alt text](src/img/image-2.png)
![alt text](src/img/image-3.png)
![alt text](src/img/image-4.png)

4) Остановил контейнер и проверил что он остановился.

![alt text](src/img/image-5.png)

5) Запустил контейнер и пробросил порты с контейнера на такие же порты localhost.

![alt text](src/img/image-6.png)

6) Проверил что по адресу `localhost:80` доступна страница nginx

![alt text](src/img/image-7.png)

7) Перезапустил контейнер и проверил он перезапустился.

![alt text](src/img/image-8.png)

## Part 2. Операции с контейнером

1) Прочитал конфигурационный файл nginx.conf внутри контейнера с помощью `exec`.

![alt text](src/img/image-9.png)

2) Создал конфигурационный файл и настроил отдачу страницы сервера nginx.

![alt text](src/img/image-10.png)

3) Скопировал файл nginx.conf внутрь контейнера через `docker cp`.

![alt text](src/img/image-11.png)

4) Перезапустил nginx внутри контейнера.

![alt text](src/img/image-12.png)

5) Проверил что по адресу `localhost:80/status` отдается страничка со статусом. 

![alt text](src/img/image-13.png)

6) Экспортировал контейнер в файл container.tar через команду `export` и остановил контейнер.

![alt text](src/img/image-14.png)

7) Удалил образ через команду `docker rmi -f`.

![alt text](src/img/image-15.png)

8) Удалил контейнер через команду `docker rm`.

![alt text](src/img/image-16.png)

9) Импортировал контейнер обратно из файла container.tar.

![alt text](src/img/image-17.png)

10) Проверил что по адресу `localhost:80/status` отдается страничка со статусом.

![alt text](src/img/image-18.png)

## Part 3. Мини веб-сервер

1) Написал мини-сервер который возвращает `Hello World!`.

![alt text](src/img/image-19.png)

2) Изменил nginx.conf что бы он проксировал запросы с 81 порта на 8080.

![alt text](src/img/image-20.png)

3) Запустил сервер через `spawn-fcgi` на порту 8080.

![alt text](src/img/image-21.png)

4) Проверил что по адресу `localhost:81` отдается написанная мной страничка.  

![alt text](src/img/image-22.png)

## Part 4. Свой докер 

1) Написал свой `Dockerfile`.

![alt text](src/img/image-23.png)

2) Собрал свой образ через команду `docker build`.

![alt text](src/img/image-24.png)

3) Проверил что все собралось коректно.

![alt text](src/img/image-25.png)

4) Запустил контейнер с этим docker images.

![alt text](src/img/image-29.png)

5) Проверил что по адресу `localhost:80` доступна строничка сервера.

![alt text](src/img/image-26.png)

6) Дописал nginx.conf что бы была доступна страничка со статусом. 

![alt text](src/img/image-27.png)

7) Проверил что страничка отдается.

![alt text](src/img/image-28.png)

## Part 5. Dockle

1) Проверил с помощью утилиты `Dockle` свой образ на ошибки.

![alt text](src/img/image-30.png)

2) Исправил ошибки.

![alt text](src/img/image-31.png)

## Part 6. Базовый Docker Compose

1) Собрал 2 docker образа и запустил контейнеры.

![alt text](src/img/image-32.png)

2) Проверил что страничка отдается.

![alt text](src/img/image-33.png)
