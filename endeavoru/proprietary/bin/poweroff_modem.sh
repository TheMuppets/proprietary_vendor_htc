#!/system/bin/sh

echo 0 > /sys/devices/platform/tegra-ehci.1/ehci_power
sleep 1
stop ril-daemon
stop nvm-server
stop gsm0710mux
killall gsm0710mux

rmmod raw_ip_net
rmmod cdc_acm
rmmod baseband_usb_chr
rmmod baseband_xmm_power2
echo 0 > /sys/devices/platform/baseband_xmm_power/xmm_onoff
sleep 1

