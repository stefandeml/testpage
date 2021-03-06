set -e

apt-get update
apt-get install -qq curl zlib1g-dev build-essential python
apt-get install -qq cmake g++ pkg-config jq
apt-get install -qq libcurl4-openssl-dev libelf-dev libdw-dev binutils-dev libiberty-dev

apt-get install -qq python-minimal git 
python --version

{ # try
    TAG=$(git describe --tags) &&
    echo "DER TAG"$TAG

} || { # catch
    echo "NoTag"
}
