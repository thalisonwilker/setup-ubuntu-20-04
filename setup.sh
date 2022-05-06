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


# PgAdmin4
# Setup the repository
#

# Install the public key for the repository (if not done previously):
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add ;

# Create the repository configuration file:
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update';

#
# Install pgAdmin
#

# Install for desktop mode only:
sudo apt install pgadmin4-desktop -y;
