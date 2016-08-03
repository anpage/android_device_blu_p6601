# Release name
PRODUCT_RELEASE_NAME := p6601

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/blu/p6601/device_p6601.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p6601
PRODUCT_NAME := cm_p6601
PRODUCT_BRAND := blu
PRODUCT_MODEL := p6601
PRODUCT_MANUFACTURER := blu
