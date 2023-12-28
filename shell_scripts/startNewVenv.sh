sudo apt update
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.9 python3.9-venv python3.9-dev

mkdir $1
cp runJupyter.sh ./$1
cd $1

cp ../oe3dosRequirements.txt ./

python3.9 -m venv venv
source venv/bin/activate

pip3 install -r oe3dosRequirements.txt

deactivate