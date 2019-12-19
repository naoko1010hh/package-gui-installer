name="Wine4.0"
package_name="winehq-stable"
description="WineWindowsエミュレーター"
run_preparing=false
install(){
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
rm -rf /tmp/wineinstall
mkdir /tmp/wineinstall
cd /tmp/wineinstall
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository -y 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt-get -y install --install-recommends winehq-stable
rm -rf /tmp/wineinstall
}
uninstall(){
sudo apt-get -y purge ${package_name}
sudo apt-get -y autoremove --purge
sudo apt-add-repository -y --remove 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
}