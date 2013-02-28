# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/dictionaries

# AOKP Packages
PRODUCT_PACKAGES += \
    GooManager \
    LatinImeDictionaryPack \
    Microbes \
    PerformanceControl \
    Torch 

# Orca Packages
PRODUCT_PACKAGES += \
    ORCAWallpapers \
    ORCASettings \
    Superuser \
    Carbon \
    XposedDPI \
    XposedInstaller

# CM Packages
PRODUCT_PACKAGES += \
        Apollo \
        CMFileManager \
        audio_effects.conf \
	DSPManager \
        libcyanogen-dsp \
        LockClock

# Use prebuilt su until fixed when built
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/common/xbin/su:system/xbin/su

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=280 \
    ro.kernel.android.checkjni=0

PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/orca/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/orca/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/common/etc/init.local.rc:root/init.aokp.rc \
    vendor/orca/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/orca/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/orca/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/orca/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    sftp \
    scp

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/orca/configs/common_versions.mk

# T-Mobile theme engine
include vendor/orca/configs/themes_common.mk
