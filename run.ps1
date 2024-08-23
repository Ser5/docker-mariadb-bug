docker stop mysql-bug
docker rm mysql-bug

docker run -itd `
	-v ${pwd}/volumes/var/lib/mysql/:/var/lib/mysql/ `
	-p 3306:3306 `
	--name mysql-bug `
	mysql-bug
