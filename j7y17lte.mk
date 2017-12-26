#
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := device/samsung/j7y17lte

# Common Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Flat device tree for boot image
#PRODUCT_PACKAGES += \
#   dtbhtoolExynos

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.samsungexynos7870 \
    init.baseband.rc \
    init.samsungexynos7870.rc \
    init.samsungexynos7870.usb.rc \
    init.wifi.rc \
    ueventd.samsungexynos7870.rc

# Offmode charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# SELinux file contexts
PRODUCT_COPY_FILES +=
    $(LOCAL_PATH)/ramdisk/file_contexts:root/file_contexts
