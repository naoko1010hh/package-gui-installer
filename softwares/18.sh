name="typora"
package_name="typora"
description="Markdownエディター"
run_preparing=false
install(){
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
add-apt-repository 'deb https://typora.io/linux ./' -y
apt-get update -y
apt-get install -y ${package_name}
}
uninstall(){
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}