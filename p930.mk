$(call inherit-product-if-exists, vendor/lge/p930/p930-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_TAGS += dalvik.gc.type-precise
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p930/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.iprj.rc:root/init.iprj.rc \
    $(LOCAL_PATH)/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/init.iprj.usb.rc:root/init.iprj.usb.rc \
    $(LOCAL_PATH)/ueventd.iprj.rc:root/ueventd.iprj.rc \
    $(LOCAL_PATH)/fstab.iprj:root/fstab.iprj \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/boot_logo_00000.rle:root/bootimages/boot_logo_00000.rle \
    $(LOCAL_PATH)/prebuilt/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.baseband.sh:system/etc/init.qcom.baseband.sh

## Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/config/thermald.conf:system/etc/thermald.conf \
    $(LOCAL_PATH)/config/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/config/hosts:system/etc/hosts \
    $(LOCAL_PATH)/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/config/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/config/qosmgr_rules.xml:system/etc/qosmgr_rules.xml \

## Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/ats_input.kl:system/usr/keylayout/ats_input.kl \
    $(LOCAL_PATH)/config/synaptics_ts.kl:system/usr/keylayout/synaptics_ts.kl \
    $(LOCAL_PATH)/config/atcmd_virtual_kbd.kl:system/usr/keylayout/atcmd_virtual_kbd.kl \
    $(LOCAL_PATH)/config/ijb_skt-keypad.kl:system/usr/keylayout/ijb_skt-keypad.kl \
    $(LOCAL_PATH)/config/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
    $(LOCAL_PATH)/config/touch_dev.kl:system/usr/keylayout/touch_dev.kl \
    $(LOCAL_PATH)/config/osp3-input.kl:system/usr/keylayout/osp3-input.kl \
    $(LOCAL_PATH)/config/touch_dev.idc:system/usr/idc/touch_dev.idc \
    $(LOCAL_PATH)/config/osp3-input.idc:system/usr/idc/osp3-input.idc \
	
# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \

# Qcom Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    libexternal \
    libgenlock \
    gralloc.msm8660 \
    libmemalloc \
    memtrack.msm8660 \
    hwcomposer.msm8660 \
    liboverlay \
    libqdutils \
    libqdMetaData \
    libqservice \
    libtilerenderer \
    libvirtual \
    libI420colorconvert \

PRODUCT_PACKAGES += \
    libFFTEm \
    libmlFIFO \
    lights.iprj \
    libtinyalsa \
    libaudio-resampler \
    audio_policy.conf \
    audio.primary.iprj \
    audio.a2dp.default \
    audio.usb.default \
    audio_policy.msm8660 \
    power.qcom \
    libhealthd.iprj \
    libinit_msm \
    com.android.future.usb.accessory \

#GPS todo
PRODUCT_PACKAGES += \
    gps.msm8660 \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    libloc_api_v02 \
    libloc_api-rpc-qc \
    libloc_api_rpcgen \
    gps.conf \
    sap.conf \

# OMX Open Source
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \

# Qcom Close Source
PRODUCT_PACKAGES += \
    libmmosal \
    libmmparser \
    libExtendedExtractor \
    libaudcal \
    libacdbloader \
    libOmxAacDec \
    libOmxAmrwbplusDec \
    libOmxWmaDec \
    libaudioparsers \
    lib_iec_60958_61937 \
    qseecomd \

PRODUCT_PACKAGES += \
    firmware_init \
    hwaddrs \

# CAF
PRODUCT_PACKAGES += \
    libdashplayer \
    libc2dcolorconvert \
    qcmediaplayer \
    libnetcmdiface \

PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni \

PRODUCT_PACKAGES += \
    Torch \

# Charger mode
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \

# Common properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    mobiledata.interfaces=rmnet_sdio0,rmnet_sdio1 \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    DEVICE_PROVISIONED=1 \
    ro.telephony.ril_class=LGEQualcommUiccRIL \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=120 \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.composition.type=dyn \
    persist.sys.usb.config=mtp,adb \
    ro.opengles.version=131072 \
    com.qc.hardware=true \
    ro.bt.bdaddr_path=/data/misc/bd_addr \
    debug.camera.landscape=true \
    ro.ril.shutdown=true \
    debug.mdpcomp.maxlayer=3 \
    debug.mdpcomp.logs=0 \
    debug.hwc.dynThreshold=1.9 \

#    dev.pm.dyn_samplingrate=1 \
#    ro.bq.gpu_to_cpu_unsupported=1 \
#    persist.hwc.mdpcomp.enable=true \
#    debug.gr.numframebuffers=2 \
#    debug.egl.recordable.rgba8888=1 \
#    ro.hwui.text_cache_width=1536 \
#    ro.hwui.text_cache_height=256 \
#    ro.hdmi.enable=true \
#    persist.sys.ui.hw=1 \
#debug.hwc.logvsync 0
#debug.egl.swapinterval 1
#debug.sf.dump.enable true
#debug.mdpcomp.maxlayer 3
#debug.hwc.dynThreshold 2
#debug.gr.calcfps 1
#debug.gr.calcfps.type 0
#debug.gr.calcfps.timeperiod 1000
#debug.gr.calcfps.period 10
#debug.gr.calcfps.ignorethresh_us 500000
#debug.sf.hw 0
#debug.composition.type mdp
#debug.gr.numframebuffers 2
#debug.gralloc.map_fb_memory 1
#debug.mdpcomp.mixedmode.disable 1
#debug.mdpcomp.maxpermixer 1
#debug.mdpcomp.logs 1
#debug.mdpcomp.idletime 1
#persist.hwc.mdpcomp.enable 1
#persist.sys.wfd.virtual 0
#persist.qcom.cabl.video_only 1
#persist.sys.actionsafe.width 0
#persist.sys.actionsafe.height 0
#persist.user.panel3D 1
#persist.gralloc.cp.level3 1
#ro.qualcomm.cabl 1

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=adb \
    persist.sys.root_access=3

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := LG
PRODUCT_NAME := full_p930
PRODUCT_DEVICE := p930
PRODUCT_MODEL := LG-P930
