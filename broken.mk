## Specify phone tech before including full_phone
$(call inherit-product, vendor/broken/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit some common broken stuff.
$(call inherit-product, vendor/broken/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p930/full_p930.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p930
PRODUCT_NAME := broken_p930
PRODUCT_BRAND := OptimusLTE
PRODUCT_MODEL := Nitro
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_iproj BUILD_FINGERPRINT=LGE/i_skt/i_skt:4.1.2/JZO54K/LG-SU640-V30c.1e63311706:user/release-keys PRIVATE_BUILD_DESC="ijb_skt_kr-user 4.1.2 JZO54K f9b82f2196 release-keys"
