ARCHS = armv7 armv7s arm64
THEOS_DEVICE_IP = 192.168.1.105 
TARGET = iPhone:latest:8.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyCrackDemo
MyCrackDemo_FRAMWORKS = UIKit
MyCrackDemo_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MyCrackDemoApp"
