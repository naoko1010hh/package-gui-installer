name="kdeconnect"
package_name="kdeconnect"
description="スマホアプリと連動するソフトウェア"
run_preparing=false
install(){
apt-get install -y ${package_name}
}
uninstall(){
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}