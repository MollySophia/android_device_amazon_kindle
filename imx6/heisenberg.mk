# This is a FSL Android Reference Design platform based on i.MX6Q ARD board
# It will inherit from FSL core product which in turn inherit from Google generic

$(call inherit-product, device/amazon/imx6/imx6.mk)

# Overrides
PRODUCT_NAME := heisenberg
PRODUCT_DEVICE := heisenberg

include device/amazon/heisenberg/Product.mk

PRODUCT_COPY_FILES += \
	device/amazon/heisenberg/init.rc:root/init.freescale.rc \
	device/amazon/heisenberg/epdc_init.sh:system/bin/epdc_init.sh \
	device/amazon/heisenberg/lib/firmware/epdc_builtin.fw.gz:root/lib/firmware/imx/epdc_builtin.fw.gz \
	device/amazon/heisenberg/lib/modules/mxc_epdc_eink.ko:system/lib/modules/mxc_epdc_eink.ko 

PRODUCT_COPY_FILES += \
	device/amazon/heisenberg/lib/firmware/fw_bcmdhd.bin:system/vendor/firmware/fw_bcmdhd.bin \
	device/amazon/heisenberg/lib/firmware/fw_bcmdhd_apsta.bin:system/vendor/firmware/fw_bcmdhd_apsta.bin \
	device/amazon/heisenberg/lib/firmware/nvram.txt:system/vendor/firmware/nvram.txt

DEVICE_PACKAGE_OVERLAYS := device/amazon/heisenberg/overlay

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG := normal ldpi mdpi hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.screen.portrait.xml:system/etc/permissions/android.hardware.screen.portrait.xml \
	frameworks/native/data/etc/android.hardware.screen.landscape.xml:system/etc/permissions/android.hardware.screen.landscape.xml \
	frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
	frameworks/native/data/etc/android.software.voice_recognizers.xml:system/etc/permissions/android.software.voice_recognizers.xml \
	frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml \
	frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
	frameworks/native/data/etc/android.software.device_admin.xml:system/etc/permissions/android.software.device_admin.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	ro.config.low_ram=true \
	ro.sf.lcd_density=194