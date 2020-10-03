echo "INFORMACION CUENTA GITHUB" 

git_usr="cristina-mat"

curl -s "https://api.github.com/users/$git_usr/repos" -o GitHub.txt

echo -e '\n' 

echo "===============CANCION================" 

artista="maluma"

titulo="hawai"

curl "https://api.lyrics.ovh/v1/$artista/$titulo" -o Letra.txt

echo -e '\n' 

echo "/////////////CODIGO POSTAL///////////////" 

CP="64000"

curl "api.zippopotam.us/MX/$CP" -o Codigo Postal.txt

echo -e '\n'