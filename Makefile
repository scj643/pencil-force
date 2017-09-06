export ARCHS = arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = force
force_FILES = Tweak.xm
force_FRAMEWORKS = UIKit
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
