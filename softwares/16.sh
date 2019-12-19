name="inkscape"
package_name="inkscape"
description="ドロー系画像編集ソフト"
run_preparing=false
install(){
add-apt-repository ppa:inkscape.dev/stable -y
apt-get update -y
apt-get install -y ${package_name}
}
uninstall(){
add-apt-repository --remove ppa:inkscape.dev/stable -y
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}
