name="blender"
package_name="blender"
description="3D系"
run_preparing=false
install(){
add-apt-repository ppa:thomas-schiex/blender -y
apt-get update -y
apt-get install -y ${package_name}
}
uninstall(){
add-apt-repository --remove ppa:thomas-schiex/blender -y
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}