name="gyazo"
package_name="gyazo"
description="スクリーンショットをするツール"
run_preparing=false
install(){
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
cp ./gyazo_gyazo-for-linux.list /etc/apt/sources.list.d/
rm -rf /tmp/gyazoinstall
mkdir /tmp/gyazoinstall
cd /tmp/gyazoinstall
wget https://packagecloud.io/gyazo/gyazo-for-linux/gpgkey
apt-key add gpgkey -y
apt-get update -y
apt-get -y install gyazo
rm -rf /tmp/gyazoinstall
}
uninstall(){
apt-get -y purge gyazo
apt-get -y autoremove --purge
rm -f /etc/apt/sources.list.d/gyazo_gyazo-for-linux.list
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
python3 delkey.py gyazo/gyazo-for-linux
}
