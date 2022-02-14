#
# Product-specific compile-time definitions.
#

include device/amazon/imx6/soc/imx6sl.mk
include device/amazon/imx6/BoardConfigCommon.mk
include device/fsl-proprietary/gpu-viv/fsl-gpu.mk

TARGET_BOOTLOADER_BOARD_NAME := EANAB
BOARD_SOC_CLASS := IMX6

USE_CAMERA_STUB := false
BOARD_HAVE_IMX_CAMERA := false
HAVE_FSL_EPDC_FB := true

BOARD_HAVE_HARDWARE_GPS := false
USE_ATHR_GPS_HARDWARE := false
USE_QEMU_GPS_HARDWARE := false

TARGET_KERNEL_MODULES        := \
								kernel_imx/drivers/video/mxc/mxc_epdc_fb.ko:system/lib/modules/mxc_epdc_fb.ko \
								kernel_imx/drivers/input/touchscreen/zforce2.ko:system/lib/modules/zforce2.ko \
                                kernel_imx/drivers/net/wireless/bcmdhd/bcmdhd.ko:system/lib/modules/bcmdhd.ko

TARGET_KERNEL_DEFCONF := imx_heisenberg_defconfig
BOARD_KERNEL_CMDLINE := console=ttymxc0,115200 init=/init \
                            androidboot.console=ttymxc0 \
                            consoleblank=0 androidboot.hardware=freescale androidboot.selinux=permissive \
                            androidboot.dm_verity=disable
TARGET_BOOTLOADER_CONFIG := imx6sl:mx6sl_heisenberg_config
TARGET_BOARD_DTS_CONFIG := imx6sl:imx6sl-heisenberg.dtb

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216

# for recovery service
TARGET_SELECT_KEY := 28
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_RECOVERY_FSTAB = device/amazon/heisenberg/fstab.freescale
PRODUCT_COPY_FILES +=	\
	device/amazon/heisenberg/fstab.freescale:root/fstab.freescale

# Wifi related defines
BOARD_SUPPORT_BCM_WIFI  := true
#BCM_WIFI_ONLY   := true

BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := UNITE
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"

BOARD_HAVE_VPU := false
BOARD_MODEM_VENDOR := AMAZON

USE_ION_ALLOCATOR := false
USE_GPU_ALLOCATOR := false