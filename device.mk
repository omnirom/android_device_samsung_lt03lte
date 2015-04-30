#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/lt03lte/lt03lte-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-hwui-memory.mk)
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# GPS
PRODUCT_PACKAGES += \
    gps.msm8974 \
    libloc_core

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/gps.conf:/system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:/system/etc/sap.conf

# Input device
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/sec_e-pen.idc:system/usr/idc/sec_e-pen.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
	$(LOCAL_PATH)/keylayout/Vendor_0079_Product_0011.kl:system/usr/keylayout/Vendor_0079_Product_0011.kl \
	$(LOCAL_PATH)/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
	$(LOCAL_PATH)/keylayout/Vendor_0461_Product_4dfc.kl:system/usr/keylayout/Vendor_0461_Product_4dfc.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_b32f.kl:system/usr/keylayout/Vendor_046d_Product_b32f.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_b330.kl:system/usr/keylayout/Vendor_046d_Product_b330.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_b331.kl:system/usr/keylayout/Vendor_046d_Product_b331.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_b332.kl:system/usr/keylayout/Vendor_046d_Product_b332.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c219.kl:system/usr/keylayout/Vendor_046d_Product_c219.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c21f.kl:system/usr/keylayout/Vendor_046d_Product_c21f.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
	$(LOCAL_PATH)/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \
	$(LOCAL_PATH)/keylayout/Vendor_04e8_Product_a000.kl:system/usr/keylayout/Vendor_04e8_Product_a000.kl \
	$(LOCAL_PATH)/keylayout/Vendor_04e8_Product_a005.kl:system/usr/keylayout/Vendor_04e8_Product_a005.kl \
	$(LOCAL_PATH)/keylayout/Vendor_04e8_Product_a006.kl:system/usr/keylayout/Vendor_04e8_Product_a006.kl \
	$(LOCAL_PATH)/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
	$(LOCAL_PATH)/keylayout/Vendor_0583_Product_2060.kl:system/usr/keylayout/Vendor_0583_Product_2060.kl \
	$(LOCAL_PATH)/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
	$(LOCAL_PATH)/keylayout/Vendor_05ac_Product_0255.kl:system/usr/keylayout/Vendor_05ac_Product_0255.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1038_Product_1412.kl:system/usr/keylayout/Vendor_1038_Product_1412.kl \
	$(LOCAL_PATH)/keylayout/Vendor_12bd_Product_d015.kl:system/usr/keylayout/Vendor_12bd_Product_d015.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1689_Product_fd00.kl:system/usr/keylayout/Vendor_1689_Product_fd00.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1689_Product_fd01.kl:system/usr/keylayout/Vendor_1689_Product_fd01.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1689_Product_fe00.kl:system/usr/keylayout/Vendor_1689_Product_fe00.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1bad_Product_f016.kl:system/usr/keylayout/Vendor_1bad_Product_f016.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1bad_Product_f023.kl:system/usr/keylayout/Vendor_1bad_Product_f023.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1bad_Product_f027.kl:system/usr/keylayout/Vendor_1bad_Product_f027.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1bad_Product_f036.kl:system/usr/keylayout/Vendor_1bad_Product_f036.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1d79_Product_0009.kl:system/usr/keylayout/Vendor_1d79_Product_0009.kl \
	$(LOCAL_PATH)/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
	$(LOCAL_PATH)/keylayout/Vendor_2378_Product_100a.kl:system/usr/keylayout/Vendor_2378_Product_100a.kl \
	$(LOCAL_PATH)/keylayout/Vendor_2943_Product_0020.kl:system/usr/keylayout/Vendor_2943_Product_0020.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8974

# Lights
PRODUCT_PACKAGES += \
    lights.msm8974

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.carrier.rc \
    init.crda.sh \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader \
    hostapd \
    libwpa_client \
    wpa_supplicant

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGSMDevice=1 \
    ro.telephony.default_network=9

# Common msm8974
$(call inherit-product, device/samsung/msm8974-common/msm8974.mk)
