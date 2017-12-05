#!/bin/bash 
bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
cd $bin;
function download(){
    target_plugin_name=$1
    plugin_latest_id=$(curl -Ls https://github.com/intelsdi-x/${target_plugin_name}/releases/latest |grep "<title>Release" |awk '{print $2}' )
    echo https://github.com/intelsdi-x/${target_plugin_name}/releases/download/${plugin_latest_id}/${target_plugin_name}_linux_x86_64
    curl -sfL "https://github.com/intelsdi-x/${target_plugin_name}/releases/download/${plugin_latest_id}/${target_plugin_name}_linux_x86_64" -o ${target_plugin_name}
}
function readme(){
    echo "snap_plugin_downloader.sh <plugin_name>"
    echo '
    * snap-plugin-collector-docker
    * snap-plugin-collector-ethtool
    * snap-plugin-collector-cpu
    * snap-plugin-collector-disk
    * snap-plugin-collector-psutil
    * snap-plugin-collector-meminfo
    * snap-plugin-processor-statistics
    * snap-plugin-publisher-influxdb
    * snap-plugin-publisher-graphite
    * snap-plugin-publisher-file
    '
}
if [ "$1" == ""  ]
then
    readme
else
    download $1
fi
