name="ffmpeg"
package_name="ffmpeg"
description="ffmpeg動画ファイルの変換を行うことができるソフトウェア"
run_preparing=false
install(){
apt-get install -y ${package_name}
}
uninstall(){
apt-get purge -y ${package_name} && apt-get autoremove -y --purge
}