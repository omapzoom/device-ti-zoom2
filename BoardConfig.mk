
TARGET_BOARD_PLATFORM := omap3

# Board configuration
#
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi

# Kernel/Bootloader machine name
#
TARGET_BOOTLOADER_BOARD_NAME := zoom2
TARGET_NO_KERNEL := true

TARGET_NO_RADIOIMAGE := true
# TARGET_HARDWARE_3D := true

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_ARG      := "sdc_ctrl=3"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# FM
BUILD_FM_RADIO := true
BOARD_HAVE_FM_ROUTING := true

# MultiMedia defines
#USE_CAMERA_STUB := true
#BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
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

# This define enables the compilation of OpenCore's command line TestApps
BUILD_PV_TEST_APPS :=1

