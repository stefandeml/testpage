set -e
apt-get update
apt-get -qq install git 
python --version

TAG=$(git describe --tags)
echo $TAG

