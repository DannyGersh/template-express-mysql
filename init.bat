docker pull ubuntu/mysql
docker run -d --name math-mysql -e TZ=UTC -v "%CD%\database\volume":"/volume" -v "%CD%\database\volume-percist":"/var/lib/mysql" -p 30306:3306 -e MYSQL_ROOT_PASSWORD=123 ubuntu/mysql:8.0-22.04_beta
docker start math-mysql
docker exec -it math-mysql /bin/bash /volume/init
