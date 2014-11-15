# Brand
PRODUCT_BRAND ?= frank

# Local path for prebuilts
LOCAL_PATH:= vendor/frank/prebuilts/common/system

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.ril.enable.amr.wideband=1 \
    net.tethering.noprovisioning=true 

# Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/frank/overlays/common

# Needed Packages
PRODUCT_PACKAGES += Launcher3

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable sip+voip on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Blobs for media effects
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    $(LOCAL_PATH)/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# Backuptool support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addon.d/50-simpleaosp.sh:system/addon.d/50-simepleaosp.sh \
    $(LOCAL_PATH)/bin/backuptool.functions:system/bin/backuptool.functions \
    $(LOCAL_PATH)/bin/backuptool.sh:system/bin/backuptool.sh

# Bootanimation support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip
    
#add n6 audio files
# Alarms
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/alarms/Argon.ogg:system/media/audio/alarms/Argon.ogg \
        $(LOCAL_PATH)/alarms/Carbon.ogg:system/media/audio/alarms/Carbon.ogg \
        $(LOCAL_PATH)/alarms/Helium.ogg:system/media/audio/alarms/Helium.ogg \
        $(LOCAL_PATH)/alarms/Krypton.ogg:system/media/audio/alarms/Krypton.ogg \
        $(LOCAL_PATH)/alarms/Neon.ogg:system/media/audio/alarms/Neon.ogg \
        $(LOCAL_PATH)/alarms/Oxygen.ogg:system/media/audio/alarms/Oxygen.ogg \
        $(LOCAL_PATH)/alarms/Osmium.ogg:system/media/audio/alarms/Osmium.ogg \
        $(LOCAL_PATH)/alarms/Platinum.ogg:system/media/audio/alarms/Platinum.ogg
   
# Notifications
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/notifications/Ariel.ogg:system/media/audio/notifications/Ariel.ogg \
        $(LOCAL_PATH)/notifications/Carme.ogg:system/media/audio/notifications/Carme.ogg \
        $(LOCAL_PATH)/notifications/Ceres.ogg:system/media/audio/notifications/Ceres.ogg \
        $(LOCAL_PATH)/notifications/Elara.ogg:system/media/audio/notifications/Elara.ogg \
        $(LOCAL_PATH)/notifications/Europa.ogg:system/media/audio/notifications/Europa.ogg \
        $(LOCAL_PATH)/notifications/Iapetus.ogg:system/media/audio/notifications/Iapetus.ogg \
        $(LOCAL_PATH)/notifications/Io.ogg:system/media/audio/notifications/Io.ogg \
        $(LOCAL_PATH)/notifications/Rhea.ogg:system/media/audio/notifications/Rhea.ogg \
        $(LOCAL_PATH)/notifications/Salacia.ogg:system/media/audio/notifications/Salacia.ogg \
        $(LOCAL_PATH)/notifications/Tethys.ogg:system/media/audio/notifications/Tethys.ogg \
        $(LOCAL_PATH)/notifications/Titan.ogg:system/media/audio/notifications/Titan.ogg

# Ringtones
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ringtones/Callisto.ogg:system/media/audio/ringtones/Callisto.ogg \
        $(LOCAL_PATH)/ringtones/Dione.ogg:system/media/audio/ringtones/Dione.ogg \
        $(LOCAL_PATH)/ringtones/Ganymede.ogg:system/media/audio/ringtones/GanyMede.ogg \
        $(LOCAL_PATH)/ringtones/Luna.ogg:system/media/audio/ringtones/Luna.ogg \
        $(LOCAL_PATH)/ringtones/Oberon.ogg:system/media/audio/ringtones/Oberon.ogg \
        $(LOCAL_PATH)/ringtones/Phobos.ogg:system/media/audio/ringtones/Phobos.ogg \
        $(LOCAL_PATH)/ringtones/RobotsforEveryone.ogg:system/media/audio/ringtones/RobotsforEveryone.ogg \
        $(LOCAL_PATH)/ringtones/Sedna.ogg:system/media/audio/ringtones/Sedna.ogg \
        $(LOCAL_PATH)/ringtones/SpagnolaOrchestration.ogg:system/media/audio/ringtones/SpagnolaOrchestration.ogg \
        $(LOCAL_PATH)/ringtones/Titania.ogg:system/media/audio/ringtones/Titania.ogg \
        $(LOCAL_PATH)/ringtones/Triton.ogg:system/media/audio/ringtones/Triton.ogg \
        $(LOCAL_PATH)/ringtones/Umbriel.ogg:system/media/audio/ringtones/Umbriel.ogg

# Ui
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ui/audio_end.ogg:system/media/audio/ui/audio_end.ogg \
        $(LOCAL_PATH)/ui/audio_initiate.ogg:system/media/audio/ui/audio_initiate.ogg \
        $(LOCAL_PATH)/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
        $(LOCAL_PATH)/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
        $(LOCAL_PATH)/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
        $(LOCAL_PATH)/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
        $(LOCAL_PATH)/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
        $(LOCAL_PATH)/ui/KeypressInvalid.ogg:system/media/audio/ui/KeypressInvalid.ogg \
        $(LOCAL_PATH)/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
        $(LOCAL_PATH)/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
        $(LOCAL_PATH)/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
        $(LOCAL_PATH)/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
        $(LOCAL_PATH)/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
        $(LOCAL_PATH)/ui/NFCFailure.ogg:system/media/audio/ui/NFCFailure.ogg \
        $(LOCAL_PATH)/ui/NFCInitiated.ogg:system/media/audio/ui/NFCInitiated.ogg \
        $(LOCAL_PATH)/ui/NFCSuccess.ogg:system/media/audio/ui/NFCSuccess.ogg \
        $(LOCAL_PATH)/ui/NFCTransferComplete.ogg:system/media/audio/ui/NFCTransferComplete.ogg \
        $(LOCAL_PATH)/ui/NFCTransferInitiated.ogg:system/media/audio/ui/NFCTransferInitiated.ogg \
        $(LOCAL_PATH)/ui/Trusted.ogg:system/media/audio/ui/Trusted.ogg \
        $(LOCAL_PATH)/ui/Undock.ogg:system/media/audio/ui/Undock.ogg \
        $(LOCAL_PATH)/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
        $(LOCAL_PATH)/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
        $(LOCAL_PATH)/ui/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg \
        $(LOCAL_PATH)/ui/WirelessChargingStarted.ogg:system/media/audio/ui/WirelessChargingStarted.ogg