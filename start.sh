if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hellking20/Haihai /Haihai
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Haihai
fi
cd /Haihai
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
