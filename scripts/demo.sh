set -e
apt-get update
apt-get -qq install python-minimal git 
python --version

TAG=$(git describe --tags)
echo $TAG

