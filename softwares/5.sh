name="firefox"
package_name="firefox"
description="firefoxブラウザー"
run_preparing=false
install(){
apt-get install -y ${package_name}
}
uninstall(){
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}