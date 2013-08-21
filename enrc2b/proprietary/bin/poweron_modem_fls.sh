#!/system/bin/sh
# 2/21 Ver: 1.0.2 Force CPU performance during IMCdownload
/system/bin/log -p e -t MODEM "Poweron_modem_fls.sh version: 1.0.2"

backup_dir=/system/etc/
work_dir=/data/modem_work/
Injected_dir=/data/modem_work/
mkdir ${work_dir} -p 2> /dev/null
echo main > /sys/power/wake_lock

malog_status=`getprop persist.radio.matrace.enable`

# Check if node ttyACMX0 created
if [ ! -f /dev/ttyACMX0 ]; then
/system/bin/log -p e -t MODEM "ttyACMX0 is null. Create it."
/system/bin/mknod /dev/ttyACMX0 c 66 0
/system/bin/chmod 770 /dev/ttyACMX0
fi

# Check if /rca mounted
if ls /rca 2>&1 /dev/null ; then
/system/bin/log -p e -t MODEM "/rca folder mounted."
NVM_cal_dir=/rca
else
/system/bin/log -p e -t MODEM "/rca folder doesn't mounted. Use /data/modem_nvdata instead."
NVM_cal_dir=/data/modem_nvdata
fi

if ls ${NVM_cal_dir}/calib.nvm 2>&1 /dev/null  ; then
/system/bin/log -p e -t MODEM "cp calib.nvm to work folder"
cat ${NVM_cal_dir}/calib.nvm > ${work_dir}/calib.nvm
else
/system/bin/log -p e -t MODEM "no calib.nvm in RCA partition"
fi

# 2012 01/30 calib.nvm will not be changed in OS mode and put it in /data/modem_work/ folder
/system/bin/log -p e -t MODEM "setprop ril.nvm.cal.dir ${work_dir}"
setprop ril.nvm.cal.dir ${work_dir}
/system/bin/log -p e -t MODEM "setprop ril.nvm.work.dir ${work_dir}"
setprop ril.nvm.work.dir ${work_dir}

# Check if /rfs/sec.bin can be generated
sec_dir=/rfs/
/system/bin/make_sec_bin ${sec_dir}/sec.bin
if ls ${sec_dir}/sec.bin 2>&1 /dev/null ; then
/system/bin/log -p e -t MODEM "Gen. sec.bin SUCC in ${sec_dir}"
else
sec_dir=/data/modem_sec/
mkdir ${sec_dir} -p 2> /dev/null
/system/bin/make_sec_bin ${sec_dir}/sec.bin
/system/bin/log -p e -t MODEM "rfs seems not mounted, Gen. sec.bin SUCC in ${sec_dir}"
fi
sync

if ls ${sec_dir}/sec.bin 2>&1 /dev/null ; then
/system/bin/log -p e -t MODEM "Double confirm sec.bin is in ${sec_dir} and SUCC."
else
/system/bin/log -p e -t MODEM "Error: /data partition is full and no RFS mounted"
fi

/system/bin/log -p e -t MODEM "NVM Injecting file: new InjectionTool will generate empty nvm file if it doesn't exist"
/system/bin/InjectionTool -i ${backup_dir}/QUO_6260.fls.clean -o ${Injected_dir}/QUO_6260.fls -n ${work_dir} -s ${sec_dir}
/system/bin/log -p i -t MODEM "Delete sec.bin in ${sec_dir}"
rm ${sec_dir}/sec.bin
sync

#
# insmod cdc-acm, run IMCdownload
#
#set the different channel number when malog enabled.

/system/bin/log -p i -t MODEM "Checking malog_status $malog_status"
case $malog_status in
	"1")
		/system/bin/log -p i -t MODEM "insmod /system/lib/modules/cdc-acm.ko 2"
		insmod /system/lib/modules/cdc-acm.ko max_intfs=2
		;;
	*)
		/system/bin/log -p i -t MODEM "insmod /system/lib/modules/cdc-acm.ko  1"
		insmod /system/lib/modules/cdc-acm.ko max_intfs=1
		;;
esac

/system/bin/log -p e -t MODEM "IMCdownload -V0x1130 -X0 -x800 -y30 -z50"
cd ${work_dir}
IMCdownload -V0x1130 -X0 -x800 -y30 -z50

#
# loop until /dev/ttyACM0 is available (retry 30 seconds)
#
/system/bin/log -p e -t MODEM "try to find /dev/ttyACM0..."
count=0
for count in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
do
	if ls /dev/ttyACM0 2>&1 > /dev/null ; then
		echo "ttyACM0 found!!"
		/system/bin/log -p e -t MODEM "ttyACM0 found!!"
		echo main > /sys/power/wake_unlock
		break
	else
		sleep 1
		/system/bin/log -p e -t MODEM "Waiting for /dev/ttyACM0, before start gsmmux"
		echo "$count Waiting for /dev/ttyACM0, before start gsmmux"
	fi
done
# check if ttyACM0 is not found in 30 seconds
case $count in
	"30")
		echo "eq 30, ttyACM0 not found!!!"
		echo main > /sys/power/wake_unlock
		exit 1
		;;
	*)
		echo "ttyACM0 found, continue"
		;;
esac

# start gsm mux
/system/bin/log -p e -t MODEM "/dev/ttyACM0 found, start gsm0710mux"
echo "/dev/ttyACM0 found, start gsm0710mux"
start gsm0710mux
# raw ip net
/system/bin/log -p i -t MODEM "Checking malog_status for raw_ip_net $malog_status"
case $malog_status in
	"1")
		/system/bin/log -p e -t MODEM "insmod /system/lib/modules/raw_ip_net.ko 2"
		insmod /system/lib/modules/raw_ip_net.ko max_intfs=2
		;;
	*)
		/system/bin/log -p e -t MODEM "insmod /system/lib/modules/raw_ip_net.ko 3"
		insmod /system/lib/modules/raw_ip_net.ko max_intfs=3
		;;
esac
