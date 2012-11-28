#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=mooncake

READ=$(cat BoardConfig.mk | grep "SENSORS_COMPASS_AK8973 := true")

if [ "$READ" = "SENSORS_COMPASS_AK8973 := true" ]; then
    SENSOR="AKM8973"
else
    SENSOR="AKM8962"
fi

mkdir -p ../../../vendor/zte/$DEVICE/proprietary
mkdir -p ../../../vendor/zte/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/zte/$DEVICE/proprietary/etc
mkdir -p ../../../vendor/zte/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/zte/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/zte/$DEVICE/proprietary/lib/hw

if [ "$SENSOR" = "AKM8973" ]; then
    unzip -j -o ../../../${DEVICE}_update.zip system/bin/akmd2 -d ../../../vendor/zte/$DEVICE/proprietary/bin/
    chmod 755 ../../../vendor/zte/$DEVICE/proprietary/bin/akmd2
else
    unzip -j -o ../../../${DEVICE}_update.zip system/bin/akmd8962 -d ../../../vendor/zte/$DEVICE/proprietary/bin/
    chmod 755 ../../../vendor/zte/$DEVICE/proprietary/bin/akmd8962
fi

unzip -j -o ../../../${DEVICE}_update.zip system/bin/qmuxd -d ../../../vendor/zte/$DEVICE/proprietary/bin/
chmod 755 ../../../vendor/zte/$DEVICE/proprietary/bin/qmuxd
unzip -j -o ../../../${DEVICE}_update.zip system/bin/hostapd -d ../../../vendor/zte/$DEVICE/proprietary/bin/
chmod 755 ../../../vendor/zte/$DEVICE/proprietary/bin/hostapd
unzip -j -o ../../../${DEVICE}_update.zip system/bin/hci_qcomm_init -d ../../../vendor/zte/$DEVICE/proprietary/bin/
chmod 755 ../../../vendor/zte/$DEVICE/proprietary/bin/hci_qcomm_init

# EGL
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libEGL_adreno200.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/egl/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libGLESv2_adreno200.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/egl/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libGLESv1_CM_adreno200.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/egl/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libq3dtools_adreno200.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/egl/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libgsl.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/etc/firmware/yamato_pfp.fw -d ../../../vendor/zte/$DEVICE/proprietary/etc/firmware/
unzip -j -o ../../../${DEVICE}_update.zip system/etc/firmware/yamato_pm4.fw -d ../../../vendor/zte/$DEVICE/proprietary/etc/firmware/

# RIL files
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libril-qc-1.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libril-qcril-hook-oem.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdiag.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/liboncrpc.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libqmi.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdsm.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libqueue.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdll.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libcm.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmgsdilib.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libgsdi_exp.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libgstk_exp.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libwms.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libnv.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libwmsts.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libpbmlib.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libdss.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libauth.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/

# GPS
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libloc.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libloc-rpc.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libcommondefs.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/

# Camera
unzip -j -o ../../../${DEVICE}_update.zip system/lib/liboemcamera.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmjpeg.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmipl.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/

# OMX
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxEvrcEnc.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAacDec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxWmvDec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxQcelpDec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrEnc.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAdpcmDec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxEvrcDec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxH264Dec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrDec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrwbDec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxWmaDec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxQcelp13Enc.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxMp3Dec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxMpeg4Dec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxVidEnc.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrRtpDec.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAacEnc.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmm-adspsvc.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_aacdec_sharedlibrary.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_amrdec_sharedlibrary.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_amrenc_sharedlibrary.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_avcdec_sharedlibrary.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_m4vdec_sharedlibrary.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_mp3dec_sharedlibrary.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_sharedlibrary.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/

# Gralloc
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/gralloc.mooncake.so -d ../../../vendor/zte/$DEVICE/proprietary/lib/hw/

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/zte/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/zte/__DEVICE__/unzip-files.sh - DO NOT EDIT

# All the blobs necessary for mooncake

# AKMD
ifeq ($(SENSORS_COMPASS_AK8973),true)
PRODUCT_COPY_FILES += \
    vendor/zte/__DEVICE__/proprietary/bin/akmd2:system/bin/akmd2
else
ifeq ($(SENSORS_COMPASS_AK8962),true)
PRODUCT_COPY_FILES += \
    vendor/zte/__DEVICE__/proprietary/bin/akmd8962:system/bin/akmd8962
endif # SENSORS_COMPASS_AK8962
endif # SENSORS_COMPASS_AK8973

# Binary
PRODUCT_COPY_FILES += \\
    vendor/zte/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd \\
    vendor/zte/__DEVICE__/proprietary/bin/hostapd:system/bin/hostapd \\
    vendor/zte/__DEVICE__/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init

# Graphics
PRODUCT_COPY_FILES += \\
    vendor/zte/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/zte/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/zte/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/zte/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
    vendor/zte/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/zte/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw 

# RIL
PRODUCT_COPY_FILES += \\
    vendor/zte/__DEVICE__/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/zte/__DEVICE__/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libdll.so:system/lib/libdll.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libcm.so:system/lib/libcm.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libwms.so:system/lib/libwms.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libnv.so:system/lib/libnv.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libdss.so:system/lib/libdss.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libauth.so:system/lib/libauth.so

# GPS
PRODUCT_COPY_FILES += \\
    vendor/zte/__DEVICE__/proprietary/lib/libloc.so:system/lib/libloc.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libloc.so:obj/lib/libloc.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so

# Camera
PRODUCT_COPY_FILES += \\
    vendor/zte/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/zte/__DEVICE__/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so

# OMX
PRODUCT_COPY_FILES += \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxAacDec.so:/system/lib/libOmxAacDec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxWmvDec.so:/system/lib/libOmxWmvDec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxQcelpDec.so:/system/lib/libOmxQcelpDec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:/system/lib/libOmxEvrcDec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxH264Dec.so:/system/lib/libOmxH264Dec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:/system/lib/libOmxMpeg4Dec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/zte/__DEVICE__/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so

# Gralloc
PRODUCT_COPY_FILES += \\
    vendor/zte/__DEVICE__/proprietary/lib/hw/gralloc.mooncake.so:system/lib/hw/gralloc.mooncake.so

EOF

./setup-makefiles.sh
