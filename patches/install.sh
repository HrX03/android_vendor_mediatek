#!/bin/bash
cd ../../..
cd system/core
patch -p1 < ../../vendor/mediatek/patches/android_system_core-gatekeeperd.patch
patch -p1 < ../../vendor/mediatek/patches/android_system_core-liblog.patch
patch -p1 < ../../vendor/mediatek/patches/android_system_core-libnetutils.patch
cd ../..
cd frameworks/native
patch -p1 < ../../vendor/mediatek/patches/android_frameworks_native-fence.patch
patch -p1 < ../../vendor/mediatek/patches/android_frameworks_native-graphicbuffer.patch
cd ../..
cd frameworks/base
patch -p1 <../../vendor/mediatek/patches/android_frameworks_base.patch
cd ../..
cd hardware/interfaces
patch -p1 < ../../vendor/mediatek/patches/android_hardware_interfaces-cameradevice.patch
cd ../..