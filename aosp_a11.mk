# Copyright 2014 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

TARGET_KERNEL_CONFIG := a11ul_defconfig
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# Include others
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


SOMC_PLATFORM := MSM8226

HTC_ROOT:=device/htc/a11/rootdir

PRODUCT_COPY_FILES += \
    $(HTC_ROOT)/init.environ.rc:root/init.environ.rc \
    $(HTC_ROOT)/init.power.rc:root/init.power.rc \
    $(HTC_ROOT)/init.project.rc:root/init.project.rc \
    $(HTC_ROOT)/init.rc:root/init.rc \
    $(HTC_ROOT)/init.ril.rc:root/init.ril.rc \
    $(HTC_ROOT)/init.target.rc:root/init.target.rc \
    $(HTC_ROOT)/init.trace.rc:root/init.trace.rc \
    $(HTC_ROOT)/init.usb.rc:root/init.usb.rc \
    $(HTC_ROOT)/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(HTC_ROOT)/ueventd.rc:root/ueventd.rc \
    $(HTC_ROOT)/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(HTC_ROOT)/system/etc/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    $(HTC_ROOT)/system/etc/wifi/apstacon.conf:system/etc/wifi/apstacon.conf \
    $(HTC_ROOT)/system/usr/keylayout/AK8789_HALL_SENSOR.kl:system/usr/keylayout/AK8789_HALL_SENSOR.kl \
    $(HTC_ROOT)/system/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    $(HTC_ROOT)/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(HTC_ROOT)/system/usr/keylayout/device-keypad.kl:system/usr/keylayout/device-keypad.kl \
    $(HTC_ROOT)/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(HTC_ROOT)/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(HTC_ROOT)/system/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    $(HTC_ROOT)/system/usr/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    $(HTC_ROOT)/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_0079_Product_0011.kl:system/usr/keylayout/Vendor_0079_Product_0011.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_046d_Product_c219.kl:system/usr/keylayout/Vendor_046d_Product_c219.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_046d_Product_c21f.kl:system/usr/keylayout/Vendor_046d_Product_c21f.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_0583_Product_2060.kl:system/usr/keylayout/Vendor_0583_Product_2060.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_1038_Product_1412.kl:system/usr/keylayout/Vendor_1038_Product_1412.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_12bd_Product_d015.kl:system/usr/keylayout/Vendor_12bd_Product_d015.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_1689_Product_fd00.kl:system/usr/keylayout/Vendor_1689_Product_fd00.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_1689_Product_fd01.kl:system/usr/keylayout/Vendor_1689_Product_fd01.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_1689_Product_fe00.kl:system/usr/keylayout/Vendor_1689_Product_fe00.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_1bad_Product_f016.kl:system/usr/keylayout/Vendor_1bad_Product_f016.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_1bad_Product_f023.kl:system/usr/keylayout/Vendor_1bad_Product_f023.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_1bad_Product_f027.kl:system/usr/keylayout/Vendor_1bad_Product_f027.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_1bad_Product_f036.kl:system/usr/keylayout/Vendor_1bad_Product_f036.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_1d79_Product_0009.kl:system/usr/keylayout/Vendor_1d79_Product_0009.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    $(HTC_ROOT)/system/usr/keylayout/Vendor_2378_Product_100a.kl:system/usr/keylayout/Vendor_2378_Product_100a.kl \
    $(HTC_ROOT)/system/etc/init.qcom.class_core.sh:system/etc/init.qcom.class_core.sh \
    $(HTC_ROOT)/system/etc/init.qcom.early_boot.sh:system/etc/init.qcom.early_boot.sh \
    $(HTC_ROOT)/system/etc/init.qcom.factory.sh:system/etc/init.qcom.factory.sh \
    $(HTC_ROOT)/system/etc/init.qcom.firmware_links.sh:system/etc/init.qcom.firmware_links.sh \
    $(HTC_ROOT)/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(HTC_ROOT)/system/etc/init.qcom.ril.sh:system/etc/init.qcom.ril.sh \
    $(HTC_ROOT)/system/etc/init.qcom.sh:system/etc/init.qcom.sh \
    $(HTC_ROOT)/system/etc/init.qcom.ssr.sh:system/etc/init.qcom.ssr.sh \
    $(HTC_ROOT)/system/etc/init.qcom.syspart_fixup.sh:system/etc/init.qcom.syspart_fixup.sh \
    $(HTC_ROOT)/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(HTC_ROOT)/system/etc/init.usbdiag.sh:system/etc/init.usbdiag.sh \
    $(HTC_ROOT)/system/etc/sec_config:system/etc/sec_config \
    $(HTC_ROOT)/system/etc/audio_effects.conf:system/etc/audio_effects.conf \
    $(HTC_ROOT)/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(HTC_ROOT)/system/etc/clatd.conf:system/etc/clatd.conf \
    $(HTC_ROOT)/system/etc/default_vol_level.conf:system/etc/default_vol_level.conf \
    $(HTC_ROOT)/system/etc/gps.conf:system/etc/gps.conf \
    $(HTC_ROOT)/system/etc/nfc-nci.conf:system/etc/nfc-nci.conf \
    $(HTC_ROOT)/system/etc/res_ctrl.conf:system/etc/res_ctrl.conf \
    $(HTC_ROOT)/system/etc/searchabledb.conf:system/etc/searchabledb.conf \
    $(HTC_ROOT)/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    $(HTC_ROOT)/system/etc/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf \
    $(HTC_ROOT)/system/etc/thermal-engine.conf:system/etc/thermal-engine.conf \
    $(HTC_ROOT)/system/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
    $(HTC_ROOT)/system/etc/bluetooth/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
    $(HTC_ROOT)/system/etc/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
    $(HTC_ROOT)/system/etc/bluetooth/blacklist.conf:system/etc/bluetooth/blacklist.conf \
    $(HTC_ROOT)/system/etc/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    $(HTC_ROOT)/system/etc/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
    $(HTC_ROOT)/system/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
    $(HTC_ROOT)/system/etc/bluetooth/iop_device_list.conf:system/etc/bluetooth/iop_device_list.conf \
    $(HTC_ROOT)/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf \
    $(HTC_ROOT)/system/etc/bluetooth/network.conf:system/etc/bluetooth/network.conf \
    $(HTC_ROOT)/system/etc/AlarmGroupQueueList.xml:system/etc/AlarmGroupQueueList.xml \
    $(HTC_ROOT)/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(HTC_ROOT)/system/etc/EpsAlarmQueuingList.xml:system/etc/EpsAlarmQueuingList.xml \
    $(HTC_ROOT)/system/etc/fallback_fonts.xml:system/etc/fallback_fonts.xml \
    $(HTC_ROOT)/system/etc/htc_fota_migrate.xml:system/etc/htc_fota_migrate.xml \
    $(HTC_ROOT)/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(HTC_ROOT)/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(HTC_ROOT)/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(HTC_ROOT)/system/etc/mixer_paths_auxpcm.xml:system/etc/mixer_paths_auxpcm.xml \
    $(HTC_ROOT)/system/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(HTC_ROOT)/system/etc/OperatorPolicy.xml:system/etc/OperatorPolicy.xml \
    $(HTC_ROOT)/system/etc/pnp.xml:system/etc/pnp.xml \
    $(HTC_ROOT)/system/etc/spn-conf.xml:system/etc/spn-conf.xml \
    $(HTC_ROOT)/system/etc/system_fonts.xml:system/etc/system_fonts.xml \
    $(HTC_ROOT)/system/etc/UserPolicy.xml:system/etc/UserPolicy.xml \
    $(HTC_ROOT)/system/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml \
    $(HTC_ROOT)/system/etc/wifioffloadpkg.xml:system/etc/wifioffloadpkg.xml

 
# Copy extra files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.external.xml:system/etc/permissions/android.hardware.camera.external.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.faketouch.multitouch.distinct.xml:system/etc/permissions/android.hardware.faketouch.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.faketouch.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.faketouch.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.gamepad.xml:system/etc/permissions/android.hardware.gamepad.xml \
    frameworks/native/data/etc/android.hardware.hdmi.cec.xml:system/etc/permissions/android.hardware.hdmi.cec.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.screen.landscape.xml:system/etc/permissions/android.hardware.screen.landscape.xml \
    frameworks/native/data/etc/android.hardware.screen.portrait.xml:system/etc/permissions/android.hardware.screen.portrait.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.ecg.xml:system/etc/permissions/android.hardware.sensor.heartrate.ecg.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml \
    frameworks/native/data/etc/android.software.connectionservice.xml:system/etc/permissions/android.software.connectionservice.xml \
    frameworks/native/data/etc/android.software.device_admin.xml:system/etc/permissions/android.software.device_admin.xml \
    frameworks/native/data/etc/android.software.live_tv.xml:system/etc/permissions/android.software.live_tv.xml \
    frameworks/native/data/etc/android.software.managed_users.xml:system/etc/permissions/android.software.managed_users.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.securely_removes_users.xml:system/etc/permissions/android.software.securely_removes_users.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:system/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/android.software.voice_recognizers.xml:system/etc/permissions/android.software.voice_recognizers.xml \
    frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/wearable_core_hardware.xml:system/etc/permissions/wearable_core_hardware.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml
 
$(call inherit-product, vendor/htc/a11/a11-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

PRODUCT_COPY_FILES += \
    device/htc/a10/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/htc/a10/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/htc/a10/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/htc/a10/rootdir/fstab.qcom:root/fstab.qcom 

# Product attributes
PRODUCT_NAME := aosp_a11
PRODUCT_DEVICE := a11
PRODUCT_MODEL := HTC 510
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_LOCALES += xhdpi hdpi
