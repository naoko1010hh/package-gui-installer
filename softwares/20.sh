name="gnome-system-monitor"
package_name="gnome-system-monitor"
description="GUIシステムモニター"
run_preparing=false
install(){
apt-get install -y ${package_name}
}
uninstall(){
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}
