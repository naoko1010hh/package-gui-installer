name="gimp"
package_name="gimp"
description="ペイント系画像編集ソフトウェア"
run_preparing=false
install(){
add-apt-repository ppa:otto-kesselgulasch/gimp -y
apt-get update -y
apt-get install -y ${package_name}
}
uninstall(){
add-apt-repository --remove ppa:otto-kesselgulasch/gimp -y
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}
