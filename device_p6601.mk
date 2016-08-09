$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/blu/p6601/p6601-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/blu/p6601/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/blu/p6601/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# fstab
PRODUCT_PACKAGES += \
    fstab.p6601

# Init
PRODUCT_PACKAGES += \
    init.modem.rc \
    init.p6601.rc \
    init.p6601.usb.rc \
    init.project.rc \
    ueventd.p6601.rc \
    init.recovery.p6601.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p6601
PRODUCT_DEVICE := p6601
