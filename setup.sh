DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git submodule init
git pull --recurse-submodules
git submodule update --recursive

cd ~

ln -s ${DIR}/vim .vim
ln -s ${DIR}/vimrc .vimrc

touch .inputrc
echo ${DIR}/inputrc >> .inputrc
