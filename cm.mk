# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/bq/krillin/cm_krillin.mk)

LOCAL_PATH := device/bq/krillin

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=6.0.1/MMB29M/2419427:user/release-keys PRIVATE_BUILD_DESC="krillin-user 6.0.1 MMB29M 2419427 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="krillin"

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq    
       
PRODUCT_NAME := cm_krillin
PRODUCT_DEVICE := krillin
PRODUCT_BRAND := BQ
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := Aquaris E4.5

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Inherit some common CM stuff.

CM_BUILD := krillin

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=1

$(call inherit-product, vendor/cm/config/common_full_phone.mk)
