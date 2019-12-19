name="GoogleChrome"
package_name="google-chrome-stable"
description="グーグルクロームブラウザー"
run_preparing=false
install(){
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
rm -rf /tmp/chromeinstall
mkdir /tmp/chromeinstall
cd /tmp/chromeinstall
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get -y install ./google-chrome-stable_current_amd64.deb
rm -rf /tmp/chromeinstall
}
uninstall(){
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}