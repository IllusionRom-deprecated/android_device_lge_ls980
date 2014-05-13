## Specify phone tech before including full_phone
$(call inherit-product, vendor/illusion/config/cdma.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, vendor/illusion/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/ls980/ls980.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ls980
PRODUCT_NAME := ill_ls980
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-LS980
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_spr_us/g2:4.2.2/JDQ39B/LS980ZV7.1378543552:user/release-keys PRIVATE_BUILD_DESC="g2_spr-user 4.2.2 JDQ39B LS980ZV7.1378543552 release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
        vendor/illusion/bootanimation/1080x1920.zip:system/media/bootanimation.zip
