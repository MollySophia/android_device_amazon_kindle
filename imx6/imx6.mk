$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony_kindle.mk)
$(call inherit-product, $(TOPDIR)frameworks/base/data/sounds/AllAudio.mk)

# overrides
PRODUCT_BRAND := AMAZON
PRODUCT_MANUFACTURER := AMAZON

PRODUCT_PACKAGES += \
	LiveWallpapers				\
	LiveWallpapersPicker			\
	MagicSmokeWallpapers			\
	Gallery2				\
	Gallery		    			\
	VisualizationWallpapers			\
	CubeLiveWallpapers			\
	PinyinIME				\
	libjni_pinyinime        		\
	libRS					\
	librs_jni				\
	pppd					\
	ip-up-vpn				\
	ip-up-ppp0				\
	ip-down-ppp0				\
	wpa_supplicant				\
	wpa_supplicant.conf			\
	dispd					\
	ts_calibrator				\
	libion                                  \
	display_mode_fb0.conf                   \
	display_mode_fb2.conf                   \
	display_mode_fb4.conf

# FREESCALE_EXTENDED
PRODUCT_PACKAGES += freescale-extended 		\
		    freescale-extended.xml

# Broadcom firmwares
PRODUCT_PACKAGES += \
	Type_ZP.hcd   	\
	bt_vendor.conf	\
	bcmdhd.cal		\
	fw_bcmdhd.bin	\
	fw_bcmdhd_apsta.bin

# Debug utils
PRODUCT_PACKAGES += \
	busybox					\
	bash					\
	taskset					\
	sqlite3					\
	libefence				\
	powerdebug

# Wifi AP mode
PRODUCT_PACKAGES += \
	rtl_hostapd 				\
	hostapd					\
	hostapd_cli

# keyboard mapping files.
PRODUCT_PACKAGES += \
	Dell_Dell_USB_Keyboard.kcm		\
	mxckpd.kcm				\

#audio related lib
PRODUCT_PACKAGES += \
	audio.primary.imx6			\
	audio_policy.conf			\
	tinyplay				\
	audio.a2dp.default			\
	audio.usb.default			\
	tinycap					\
	tinymix					\
	libsrec_jni				\
	libtinyalsa 				\
	libaudioutils

#imx6 Hardware HAL libs.
PRODUCT_PACKAGES += \
	lights.imx6				\
	gralloc.imx6				\
	copybit.imx6				\
	hwcomposer.imx6				\
	power.imx6				\
	audio.r_submix.default			\
	libbt-vendor				\
	libbt-vendor-broadcom		\
	magd                                 


# Freescale VPU firmware files.
# PRODUCT_PACKAGES += \
# 	libvpu					\
# 	vpu_fw_imx6q.bin			\
# 	vpu_fw_imx6d.bin			\

# Atheros wifi firmwre files.
# PRODUCT_PACKAGES += \
# 	fw-3					\
# 	bdata					\
# 	athtcmd_ram				\
# 	nullTestFlow				\
# 	cfg80211.ko				\
# 	compat.ko				\
# 	ath6kl_sdio.ko				\
# 	check_wifi_mac.sh

# Atheros wifi tool
# PRODUCT_PACKAGES += \
# 	abtfilt					\
# 	artagent				\
# 	ath6kl-fwlog-record			\
# 	athtestcmd				\
# 	psatUtil				\
# 	wmiconfig

# drm related lib
PRODUCT_PACKAGES += \
	drmserver                   		\
	libdrmframework_jni         		\
	libdrmframework             		\
	libdrmpassthruplugin        		\
	libfwdlockengine            		\
# power tool
PRODUCT_PACKAGES += \
	powerdebug

# gpu debug tool
# PRODUCT_PACKAGES += \
# 	gmem_info
# Omx related libs, please align to device/fsl/proprietary/omx/fsl-omx.mk
omx_libs := \
	core_register					\
	component_register				\
	contentpipe_register				\
	fslomx.cfg					\
	media_profiles.xml				\
	media_codecs.xml				\
	ComponentRegistry.txt				\
	lib_omx_player_arm11_elinux			 \
	lib_omx_client_arm11_elinux			\
	lib_omx_core_mgr_v2_arm11_elinux		\
	lib_omx_core_v2_arm11_elinux			\
	lib_omx_osal_v2_arm11_elinux			\
	lib_omx_common_v2_arm11_elinux			\
	lib_omx_utils_v2_arm11_elinux			\
	lib_omx_res_mgr_v2_arm11_elinux			\
	lib_omx_clock_v2_arm11_elinux			\
	lib_omx_local_file_pipe_v2_arm11_elinux		\
	lib_omx_shared_fd_pipe_arm11_elinux		\
	lib_omx_async_write_pipe_arm11_elinux		\
	lib_omx_https_pipe_arm11_elinux			\
	lib_omx_fsl_parser_v2_arm11_elinux		\
	lib_omx_wav_parser_v2_arm11_elinux		\
	lib_omx_mp3_parser_v2_arm11_elinux		\
	lib_omx_aac_parser_v2_arm11_elinux		\
	lib_omx_flac_parser_v2_arm11_elinux		\
	lib_omx_pcm_dec_v2_arm11_elinux			\
	lib_omx_mp3_dec_v2_arm11_elinux			\
	lib_omx_aac_dec_v2_arm11_elinux			\
	lib_omx_amr_dec_v2_arm11_elinux			\
	lib_omx_vorbis_dec_v2_arm11_elinux		\
	lib_omx_flac_dec_v2_arm11_elinux		\
	lib_omx_audio_processor_v2_arm11_elinux		\
	lib_omx_sorenson_dec_v2_arm11_elinux		\
	lib_omx_android_audio_render_arm11_elinux	\
	lib_omx_audio_fake_render_arm11_elinux		\
	lib_omx_ipulib_render_arm11_elinux		\
	lib_avi_parser_arm11_elinux.3.0			\
	lib_divx_drm_arm11_elinux			\
	lib_mp4_parser_arm11_elinux.3.0			\
	lib_mkv_parser_arm11_elinux.3.0			\
	lib_flv_parser_arm11_elinux.3.0			\
	lib_id3_parser_arm11_elinux			\
	lib_wav_parser_arm11_elinux			\
	lib_mp3_parser_v2_arm11_elinux			\
	lib_aac_parser_arm11_elinux			\
	lib_flac_parser_arm11_elinux			\
	lib_mp3_dec_v2_arm12_elinux			\
	lib_aac_dec_v2_arm12_elinux			\
	lib_flac_dec_v2_arm11_elinux			\
	lib_nb_amr_dec_v2_arm9_elinux			\
	lib_oggvorbis_dec_v2_arm11_elinux		\
	lib_peq_v2_arm11_elinux				\
	lib_mpg2_parser_arm11_elinux.3.0		\
	libstagefrighthw				\
	libxec						\
	lib_omx_vpu_v2_arm11_elinux			\
	lib_omx_vpu_dec_v2_arm11_elinux			\
	lib_vpu_wrapper					\
	lib_ogg_parser_arm11_elinux.3.0		\
	libfslxec					\
	lib_omx_overlay_render_arm11_elinux             \
	lib_omx_fsl_muxer_v2_arm11_elinux \
	lib_omx_mp3_enc_v2_arm11_elinux \
	lib_omx_amr_enc_v2_arm11_elinux \
	lib_omx_android_audio_source_arm11_elinux \
	lib_omx_camera_source_arm11_elinux \
	lib_mp4_muxer_arm11_elinux \
	lib_mp3_enc_v2_arm12_elinux \
	lib_nb_amr_enc_v2_arm11_elinux \
	lib_omx_vpu_enc_v2_arm11_elinux \
	lib_ffmpeg_arm11_elinux	\
	lib_omx_https_pipe_v2_arm11_elinux \
	lib_omx_https_pipe_v3_arm11_elinux \
	lib_omx_udps_pipe_arm11_elinux \
	lib_omx_rtps_pipe_arm11_elinux \
	lib_omx_streaming_parser_arm11_elinux \
	lib_omx_surface_render_arm11_elinux \
	libfsl_jpeg_enc_arm11_elinux \
	lib_wb_amr_enc_arm11_elinux \
	lib_wb_amr_dec_arm9_elinux \
	lib_omx_aac_enc_v2_arm11_elinux \
	lib_amr_parser_arm11_elinux.3.0 \
	lib_aac_parser_arm11_elinux.3.0 \
	lib_aacd_wrap_arm12_elinux_android \
	lib_mp3d_wrap_arm12_elinux_android \
	lib_vorbisd_wrap_arm11_elinux_android \
	lib_mp3_parser_arm11_elinux.3.0 \
	lib_flac_parser_arm11_elinux.3.0 \
	lib_wav_parser_arm11_elinux.3.0 \
	lib_omx_ac3toiec937_arm11_elinux \
        lib_omx_ec3_dec_v2_arm11_elinux \
	lib_omx_libav_video_dec_arm11_elinux \
	libavcodec \
	libavutil \
    libavresample \
	lib_omx_libav_audio_dec_arm11_elinux \
    lib_omx_soft_hevc_dec_arm11_elinux \
    lib_ape_parser_arm11_elinux.3.0 \



# Omx excluded libs
omx_excluded_libs :=					\
	lib_asf_parser_arm11_elinux.3.0			\
	lib_wma10_dec_v2_arm12_elinux		\
	lib_WMV789_dec_v2_arm11_elinux		\
	lib_aacplus_dec_v2_arm11_elinux			\
	lib_ac3_dec_v2_arm11_elinux			\
	\
	lib_omx_wma_dec_v2_arm11_elinux			\
	lib_omx_wmv_dec_v2_arm11_elinux			\
	lib_omx_ac3_dec_v2_arm11_elinux			\
	lib_wma10d_wrap_arm12_elinux_android \
	lib_aacplusd_wrap_arm12_elinux_android \
	lib_ac3d_wrap_arm11_elinux_android \
        lib_ddpd_wrap_arm12_elinux_android \
        lib_ddplus_dec_v2_arm12_elinux \
    lib_realad_wrap_arm11_elinux_android \
    lib_realaudio_dec_v2_arm11_elinux \
    lib_rm_parser_arm11_elinux.3.0 \
    lib_omx_ra_dec_v2_arm11_elinux \



PRODUCT_PACKAGES += $(omx_libs) $(omx_excluded_libs)

PRODUCT_PACKAGES += libubi ubinize ubiformat ubiattach ubidetach ubiupdatevol ubimkvol ubinfo mkfs_ubifs 

# FUSE based emulated sdcard daemon
PRODUCT_PACKAGES += sdcard

# e2fsprogs libs
PRODUCT_PACKAGES += \
	mke2fs		\
	libext2_blkid	\
	libext2_com_err	\
	libext2_e2p	\
	libext2_profile	\
	libext2_uuid	\
	libext2fs

# ntfs-3g binary
PRODUCT_PACKAGES += \
	ntfs-3g		\
	ntfsfix 	

# for CtsVerifier
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_AAPT_CONFIG := normal mdpi

# ril related libs
PRODUCT_PACKAGES += \
	libreference-ril-zte.so \
	libruntime-ril-port

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_PACKAGES += \
    libGLES_android

PRODUCT_PACKAGES += \
    fsck.f2fs mkfs.f2fs

PRODUCT_COPY_FILES +=	\
	device/fsl/common/input/Dell_Dell_USB_Keyboard.kl:system/usr/keylayout/Dell_Dell_USB_Keyboard.kl \
	device/fsl/common/input/Dell_Dell_USB_Keyboard.idc:system/usr/idc/Dell_Dell_USB_Keyboard.idc \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/eGalax_Touch_Screen.idc \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/HannStar_P1003_Touchscreen.idc \
	system/core/rootdir/init.rc:root/init.rc \
	device/fsl/imx6/etc/apns-conf.xml:system/etc/apns-conf.xml \
	device/fsl/imx6/etc/init.usb.rc:root/init.freescale.usb.rc \
	device/fsl/imx6/etc/ueventd.freescale.rc:root/ueventd.freescale.rc \
	device/fsl/imx6/etc/ota.conf:system/etc/ota.conf \
	device/fsl/common/display/display_mode_fb0.conf:system/etc/display_mode_fb0.conf \
	device/fsl/common/display/display_mode_fb2.conf:system/etc/display_mode_fb2.conf \
	device/fsl/common/display/display_mode_fb4.conf:system/etc/display_mode_fb4.conf \
    device/fsl-proprietary/media-profile/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    device/fsl-proprietary/media-profile/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/fsl-proprietary/media-profile/media_profiles_720p.xml:system/etc/media_profiles_720p.xml \
	device/fsl-proprietary/media-profile/media_codecs.xml:system/etc/media_codecs.xml

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# for property
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
	persist.sys.usb.config=mtp

PRODUCT_DEFAULT_DEV_CERTIFICATE := \
        device/fsl/common/security/testkey

# include a google recommand heap config file.
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# -include device/google/gapps/gapps.mk
