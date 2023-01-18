version: '3'

services:
  wordpress:
    depends_on:
        - mysql
    image: wordpress:4.9.4-php7.2-apache
    #container_name: wordpress
    environment:
        - WORDPRESS_DB_USER=root
        - WORDPRESS_DB_PASSWORD=db_password
        - WORDPRESS_DB_HOST=mysql
        - WORDPRESS_DB_NAME=webserver
    ports:
        - 3009:80
    networks:
        - web
    volumes:
        - wordpressdata:/var/www/html
  
  mysql:
    image: mariadb:10.3.3
    #container_name: db
    environment: 
        - MYSQL_ROOT_PASSWORD=db_password
        - MYSQL_USER=wp_user
        - MYSQL_PASSWORD=wp_password
        - MYSQL_DATABASE= webserver
    networks:
        - web
    volumes:
        - database:/var/lib/mysql
    
networks:
    web:
      driver: bridge

volumes:
    wordpressdata:
    database: