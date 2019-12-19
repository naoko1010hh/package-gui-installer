name="font-manager"
package_name="font-manager"
description="フォント系管理をGUIソフトウェア"
run_preparing=false
install(){
apt-get install -y ${package_name}
}
uninstall(){
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}