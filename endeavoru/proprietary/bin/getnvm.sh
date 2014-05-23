atdev_name=`getprop ril.nvmchannel1`
echo $atdev_name
bindev_name=`getprop ril.nvmchannel2`
echo $bindev_name

/system/bin/log -p i -t MODEM  "Updating the NV data..."
/system/bin/nvm_client --shutdown --atdev $atdev_name --bindev $atdev_name --dir /data/modem_nvdata
sleep 10
sync
/system/bin/log -p i -t MODEM  "Updating the NV data...Done"
