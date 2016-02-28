clear

echo "Script testing for exercise 17"
set -e

#Clear and remake the file
rm -f ex17
make ex17

#Clear the database before writing
for i in `seq 1 99`;
do
	./ex17 db.dat d $i
done

./ex17 db.dat s 1 zed zed@zedshaw.com
./ex17 db.dat s 2 frank frank@zedshaw.com
./ex17 db.dat s 3 joe joe@zedshaw.com
./ex17 db.dat s 4 colin colin@zedshaw.com

./ex17 db.dat f colin
./ex17 db.dat f frank
./ex17 db.dat g 1

