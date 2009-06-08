# OMAP Zoom 1 Board configuration
#
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi

# Kernel/Bootloader machine name
#
TARGET_BOOTLOADER_BOARD_NAME := zoom2
TARGET_NO_KERNEL := true

TARGET_NO_RADIOIMAGE := true
# TARGET_HARDWARE_3D := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
# FM
BUILD_FM_RADIO := true

# MultiMedia defines
#USE_CAMERA_STUB := true
#BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TI_CAMERA_HAL := true
HARDWARE_OMX := true
#FW3A := true
#ICAP := true
#IMAGE_PROCESSING_PIPELINE := true 
ifdef HARDWARE_OMX
OMX_VENDOR := ti
OMX_VENDOR_INCLUDES := \
   hardware/ti/omx/system/src/openmax_il/omx_core/inc \
   hardware/ti/omx/image/src/openmax_il/jpeg_enc/inc
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
endif

# WLAN 1271 Defines
BOARD_WLAN_TI_WILINK_ROOT := system/wlan/ti/WiLink_6.1
