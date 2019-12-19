name="VisualStudioCode"
package_name="code"
description="コードエディタ"
run_preparing=false
install(){
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
rm -rf /tmp/vscodeinstall
mkdir /tmp/vscodeinstall
cd /tmp/vscodeinstall
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
sudo apt-get -y install ./vscode.deb
rm -rf /tmp/vscodeinstall
}
uninstall(){
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}