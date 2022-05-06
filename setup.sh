sudo apt install git -y;
git config --global user.name "Thalyson Wilker";
git config --global user.email "thalison.wilker@gmail.com";

# https://docs.docker.com/engine/install/ubuntu/
apt remove docker docker-engine docker.io containerd runc;
apt autoremove;
apt update;
apt install ca-certificates curl gnupg lsb-release -y;

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;

apt update;
apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y;
docker run hello-world;

apt update;
# https://docs.docker.com/compose/install/
apt install docker-compose -y;
