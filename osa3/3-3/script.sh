echo 'Github repository to download:'
echo '(format https://github.com/owner/repository.git)'
read address

echo 'Repository name:'
read dir

echo 'Path to dockerfile from project root:'
echo '(For example subdir/Dockerfile or ./Dockerfile if in root)'
read loc

echo 'Image tag for publishing (docker_username/repositoryname):'
read tag

git clone $address

cd $dir

docker build . -t $tag -f $loc

docker login

docker image push $tag
