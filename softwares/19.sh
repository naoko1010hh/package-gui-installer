name="atom"
package_name="atom"
description="コードエディタ"
run_preparing=false
install(){
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
rm -rf /tmp/atominstall
mkdir /tmp/atominstall
cd /tmp/atominstall
wget https://atom-installer.github.com/v1.41.0/atom-amd64.deb
sudo apt-get -y install ./atom-amd64.deb
rm -rf /tmp/atominstall
apt-get install -y ${package_name}
}
uninstall(){
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}
