PACKAGECONFIG:x86-64 = " egl gles dri dri3 x11 xa r600 gallium gallium-llvm"

GALLIUMDRIVERS_LLVM33 = "${@bb.utils.contains('PACKAGECONFIG', 'r600', 'r600', '', d)}"

GALLIUMDRIVERS:append:armv7a = ",freedreno"
GALLIUMDRIVERS:append:aarch64 = ",freedreno"

PACKAGECONFIG:append:armv7a = " gallium \
                         ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'xa', '', d)} \
                       "
PACKAGECONFIG:append:aarch64 = " gallium \
                         ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'xa', '', d)} \
                       "
