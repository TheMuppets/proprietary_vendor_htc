# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := vendor/htc/m7-common

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/sbin/mfgsrv:root/sbin/mfgsrv \
    $(LOCAL_PATH)/proprietary/sbin/sfc:root/sbin/sfc \
    $(LOCAL_PATH)/proprietary/sbin/tpd:root/sbin/tpd

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/sbin/mfgsrv:sbin/mfgsrv \
    $(LOCAL_PATH)/proprietary/sbin/sfc:sbin/sfc \
    $(LOCAL_PATH)/proprietary/sbin/tpd:sbin/tpd \
    $(LOCAL_PATH)/proprietary/system/bin/adaptive:system/bin/adaptive \
    $(LOCAL_PATH)/proprietary/system/bin/akmd:system/bin/akmd \
    $(LOCAL_PATH)/proprietary/system/bin/awb_camera:system/bin/awb_camera \
    $(LOCAL_PATH)/proprietary/system/bin/bma150_usr:system/bin/bma150_usr \
    $(LOCAL_PATH)/proprietary/system/bin/charging:system/bin/charging \
    $(LOCAL_PATH)/proprietary/system/bin/efsks:system/bin/efsks \
    $(LOCAL_PATH)/proprietary/system/bin/flash_camera:system/bin/flash_camera \
    $(LOCAL_PATH)/proprietary/system/bin/ks:system/bin/ks \
    $(LOCAL_PATH)/proprietary/system/bin/lsc_camera:system/bin/lsc_camera \
    $(LOCAL_PATH)/proprietary/system/bin/mm-pp-daemon:system/bin/mm-pp-daemon \
    $(LOCAL_PATH)/proprietary/system/bin/mm-qcamera-app:system/bin/mm-qcamera-app \
    $(LOCAL_PATH)/proprietary/system/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    $(LOCAL_PATH)/proprietary/system/bin/mm-qcamera-test:system/bin/mm-qcamera-test \
    $(LOCAL_PATH)/proprietary/system/bin/mm-qcamera-testsuite-client:system/bin/mm-qcamera-testsuite-client \
    $(LOCAL_PATH)/proprietary/system/bin/mpdecision:system/bin/mpdecision \
    $(LOCAL_PATH)/proprietary/system/bin/netmgrd:system/bin/netmgrd \
    $(LOCAL_PATH)/proprietary/system/bin/netsharing:system/bin/netsharing \
    $(LOCAL_PATH)/proprietary/system/bin/ois_camera:system/bin/ois_camera \
    $(LOCAL_PATH)/proprietary/system/bin/qcks:system/bin/qcks \
    $(LOCAL_PATH)/proprietary/system/bin/qmuxd:system/bin/qmuxd \
    $(LOCAL_PATH)/proprietary/system/bin/test_gemini:system/bin/test_gemini \
    $(LOCAL_PATH)/proprietary/system/bin/thermald:system/bin/thermald \
    $(LOCAL_PATH)/proprietary/system/bin/zchgd:system/bin/zchgd \
    $(LOCAL_PATH)/proprietary/system/etc/agps_rm:system/etc/agps_rm \
    $(LOCAL_PATH)/proprietary/system/etc/ar0260_1:system/etc/ar0260_1 \
    $(LOCAL_PATH)/proprietary/system/etc/cir.img:system/etc/cir.img \
    $(LOCAL_PATH)/proprietary/system/etc/hldm.bin:system/etc/hldm.bin \
    $(LOCAL_PATH)/proprietary/system/etc/hltof.bin:system/etc/hltof.bin \
    $(LOCAL_PATH)/proprietary/system/etc/hltrd.bin:system/etc/hltrd.bin \
    $(LOCAL_PATH)/proprietary/system/etc/ov2722_1:system/etc/ov2722_1 \
    $(LOCAL_PATH)/proprietary/system/etc/RT5501:system/etc/RT5501 \
    $(LOCAL_PATH)/proprietary/system/lib/libacdbloader.so:system/lib/libacdbloader.so \
    $(LOCAL_PATH)/proprietary/system/lib/libaudcal.so:system/lib/libaudcal.so \
    $(LOCAL_PATH)/proprietary/system/lib/libcsd-client.so:system/lib/libcsd-client.so \
    $(LOCAL_PATH)/proprietary/system/lib/hw/vendor-camera.msm8960.so:system/lib/hw/vendor-camera.msm8960.so \
    $(LOCAL_PATH)/proprietary/system/lib/libBeautyChat.so:system/lib/libBeautyChat.so \
    $(LOCAL_PATH)/proprietary/system/lib/libcameraasd.so:system/lib/libcameraasd.so \
    $(LOCAL_PATH)/proprietary/system/lib/libcameraface.so:system/lib/libcameraface.so \
    $(LOCAL_PATH)/proprietary/system/lib/libcamerapp.so:system/lib/libcamerapp.so \
    $(LOCAL_PATH)/proprietary/system/lib/libcam_oem_plugin.so:system/lib/libcam_oem_plugin.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_ar0260_default_video.so:system/lib/libchromatix_ar0260_default_video.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_ar0260_hdr.so:system/lib/libchromatix_ar0260_hdr.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_ar0260_preview.so:system/lib/libchromatix_ar0260_preview.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_ar0260_zsl.so:system/lib/libchromatix_ar0260_zsl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_imx135_default_video.so:system/lib/libchromatix_imx135_default_video.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_imx135_hdr.so:system/lib/libchromatix_imx135_hdr.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_imx135_hfr.so:system/lib/libchromatix_imx135_hfr.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_imx135_preview.so:system/lib/libchromatix_imx135_preview.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_imx135_zsl.so:system/lib/libchromatix_imx135_zsl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_imx175_default_video.so:system/lib/libchromatix_imx175_default_video.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_imx175_hdr.so:system/lib/libchromatix_imx175_hdr.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_imx175_hfr.so:system/lib/libchromatix_imx175_hfr.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_imx175_preview.so:system/lib/libchromatix_imx175_preview.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_imx175_zsl.so:system/lib/libchromatix_imx175_zsl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_ov2722_default_video.so:system/lib/libchromatix_ov2722_default_video.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_ov2722_hdr.so:system/lib/libchromatix_ov2722_hdr.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_ov2722_preview.so:system/lib/libchromatix_ov2722_preview.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_ov2722_zsl.so:system/lib/libchromatix_ov2722_zsl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_vd6869_default_video.so:system/lib/libchromatix_vd6869_default_video.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_vd6869_hdr.so:system/lib/libchromatix_vd6869_hdr.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_vd6869_hfr.so:system/lib/libchromatix_vd6869_hfr.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_vd6869_hfr_60fps.so:system/lib/libchromatix_vd6869_hfr_60fps.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_vd6869_night.so:system/lib/libchromatix_vd6869_night.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_vd6869_preview.so:system/lib/libchromatix_vd6869_preview.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_vd6869_video_hdr.so:system/lib/libchromatix_vd6869_video_hdr.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_vd6869_zoe.so:system/lib/libchromatix_vd6869_zoe.so \
    $(LOCAL_PATH)/proprietary/system/lib/libchromatix_vd6869_zsl.so:system/lib/libchromatix_vd6869_zsl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libgemini.so:system/lib/libgemini.so \
    $(LOCAL_PATH)/proprietary/system/lib/libhtccamera.so:system/lib/libhtccamera.so \
    $(LOCAL_PATH)/proprietary/system/lib/libhtccamera_yushaniiproc.so:system/lib/libhtccamera_yushaniiproc.so \
    $(LOCAL_PATH)/proprietary/system/lib/libHTC_DIS.so:system/lib/libHTC_DIS.so \
    $(LOCAL_PATH)/proprietary/system/lib/libimage-jpeg-dec-omx-comp.so:system/lib/libimage-jpeg-dec-omx-comp.so \
    $(LOCAL_PATH)/proprietary/system/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    $(LOCAL_PATH)/proprietary/system/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmm-abl.so:system/lib/libmm-abl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmm-abl-oem.so:system/lib/libmm-abl-oem.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmcamera_aec.so:system/lib/libmmcamera_aec.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmcamera_rawchipproc.so:system/lib/libmmcamera_rawchipproc.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmcamera_rubik.so:system/lib/libmmcamera_rubik.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmipl.so:system/lib/libmmipl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmosal.so:system/lib/libmmosal.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmparser.so:system/lib/libmmparser.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    $(LOCAL_PATH)/proprietary/system/lib/liboemcamera.so:system/lib/liboemcamera.so \
    $(LOCAL_PATH)/proprietary/system/lib/libOlaEngineNew.so:system/lib/libOlaEngineNew.so \
    $(LOCAL_PATH)/proprietary/system/lib/libposteffect.so:system/lib/libposteffect.so \
    $(LOCAL_PATH)/proprietary/system/lib/libyuvimage.so:system/lib/libyuvimage.so \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/ILP0100_IPM_Code_out.bin:system/etc/firmware/ILP0100_IPM_Code_out.bin \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/ILP0100_IPM_Data_out.bin:system/etc/firmware/ILP0100_IPM_Data_out.bin \
    $(LOCAL_PATH)/proprietary/system/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    $(LOCAL_PATH)/proprietary/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/proprietary/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/proprietary/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/proprietary/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/proprietary/system/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    $(LOCAL_PATH)/proprietary/system/lib/egl/libplayback_adreno200.so:system/lib/egl/libplayback_adreno200.so \
    $(LOCAL_PATH)/proprietary/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    $(LOCAL_PATH)/proprietary/system/lib/libc2d2_a3xx.so:system/lib/libc2d2_a3xx.so \
    $(LOCAL_PATH)/proprietary/system/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    $(LOCAL_PATH)/proprietary/system/lib/libC2D2.so:system/lib/libC2D2.so \
    $(LOCAL_PATH)/proprietary/system/lib/libgsl.so:system/lib/libgsl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libllvm-a3xx.so:system/lib/libllvm-a3xx.so \
    $(LOCAL_PATH)/proprietary/system/lib/libllvm-arm.so:system/lib/libllvm-arm.so \
    $(LOCAL_PATH)/proprietary/system/lib/libOpenCL.so:system/lib/libOpenCL.so \
    $(LOCAL_PATH)/proprietary/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    $(LOCAL_PATH)/proprietary/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    $(LOCAL_PATH)/proprietary/system/lib/libsc-a3xx.so:system/lib/libsc-a3xx.so \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/vidc.b00:system/etc/firmware/vidc.b00 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/vidc.b01:system/etc/firmware/vidc.b01 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/vidc.b02:system/etc/firmware/vidc.b02 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/vidc.b03:system/etc/firmware/vidc.b03 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/vidc.mdt:system/etc/firmware/vidc.mdt \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/vidcfw.elf:system/etc/firmware/vidcfw.elf \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/hcheck.b00:system/etc/firmware/hcheck.b00 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/hcheck.b01:system/etc/firmware/hcheck.b01 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/hcheck.b02:system/etc/firmware/hcheck.b02 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/hcheck.b03:system/etc/firmware/hcheck.b03 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/hcheck.mdt:system/etc/firmware/hcheck.mdt \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/lscbuffer_rev2.bin:system/etc/firmware/lscbuffer_rev2.bin \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/tzapps.b00:system/etc/firmware/tzapps.b00 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/tzapps.b01:system/etc/firmware/tzapps.b01 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/tzapps.b02:system/etc/firmware/tzapps.b02 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/tzapps.b03:system/etc/firmware/tzapps.b03 \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/tzapps.mdt:system/etc/firmware/tzapps.mdt \
    $(LOCAL_PATH)/proprietary/system/lib/libdiag.so:system/lib/libdiag.so \
    $(LOCAL_PATH)/proprietary/system/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libdsutils.so:system/lib/libdsutils.so \
    $(LOCAL_PATH)/proprietary/system/lib/libidl.so:system/lib/libidl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqcci_legacy.so:system/lib/libqcci_legacy.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqdi.so:system/lib/libqdi.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqdp.so:system/lib/libqdp.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqmi.so:system/lib/libqmi.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqmi_cci.so:system/lib/libqmi_cci.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqmi_client_qmux.so:system/lib/libqmi_client_qmux.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqmi_common_so.so:system/lib/libqmi_common_so.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqmi_csi.so:system/lib/libqmi_csi.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqmi_encdec.so:system/lib/libqmi_encdec.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqmiservices.so:system/lib/libqmiservices.so \
    $(LOCAL_PATH)/proprietary/system/lib/libhtc_rilhook.so:system/lib/libhtc_rilhook.so \
    $(LOCAL_PATH)/proprietary/system/lib/libnetmgr.so:system/lib/libnetmgr.so \
    $(LOCAL_PATH)/proprietary/system/lib/libqc-opt.so:system/lib/libqc-opt.so \
    $(LOCAL_PATH)/proprietary/system/lib/libimu.so:system/lib/libimu.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmllite.so:system/lib/libmllite.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmlplatform.so:system/lib/libmlplatform.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmpl.so:system/lib/libmpl.so \
    $(LOCAL_PATH)/proprietary/system/lib/libmpl_jni.so:system/lib/libmpl_jni.so \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/BCM4335B0_002.001.006.0042.0044.hcd:system/etc/firmware/BCM4335B0_002.001.006.0042.0044.hcd \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/fw_bcm4335_apsta_b0.bin:system/etc/firmware/fw_bcm4335_apsta_b0.bin \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/fw_bcm4335_b0.bin:system/etc/firmware/fw_bcm4335_b0.bin \
    $(LOCAL_PATH)/proprietary/system/etc/firmware/fw_bcm4335_p2p_b0.bin:system/etc/firmware/fw_bcm4335_p2p_b0.bin
