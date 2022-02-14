#!/system/bin/sh

TO_USE=/mnt/wfm/waveform_to_use
STORAGE=/mnt/wfm/waveform_storage
WFM_FILE=/lib/firmware/imx/epdc_EANAB.fw
WFM_PARTITION=/dev/block/platform/soc0/soc.2/by-name/wfm
BUILTIN_WFM_FILE=/lib/firmware/imx/epdc_builtin.fw.gz

mkdir -p /mnt/wfm
mount -o context="u:object_r:epdc_data_file:s0" -t vfat $WFM_PARTITION /mnt/wfm
if [ $? -ne 0 ]; then
	busybox mkdosfs $WFM_PARTITION 4096
	mount context="u:object_r:epdc_data_file:s0" -t vfat $WFM_PARTITION /mnt/wfm
fi

if [ `ls -la $TO_USE | busybox wc -l` -eq 1 ]; then
	echo "epdc: Use device's waveform." >> /dev/ttymxc0

	if [ ! -d $TO_USE ]; then
		mkdir $TO_USE
		cp $STORAGE/* $TO_USE/
	fi

	if [ ! -e $TO_USE/*.wrf.gz ]; then
		cp $STORAGE/* $TO_USE/
	fi

	ln -s $TO_USE/*.wrf.gz $WFM_FILE
else
	echo "epdc: Not found device's waveform. Use builtin waveform instead." >> /dev/ttymxc0
	ln -s $BUILTIN_WFM_FILE $WFM_FILE
fi
