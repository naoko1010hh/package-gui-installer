name="flashplugin-installer"
package_name="flashplugin-installer"
description="flashplugin-installer"
run_preparing=false
install(){
apt-get install -y ${package_name}
}
uninstall(){
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}