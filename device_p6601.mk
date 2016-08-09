$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/blu/p6601/p6601-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/blu/p6601/overlay

LOCAL_PATH := device/blu/p6601

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/blu/p6601/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
    $(LOCAL_PATH)/rootdir/root/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p6601
PRODUCT_DEVICE := p6601
