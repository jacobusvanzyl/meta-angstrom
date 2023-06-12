# Enable more linux-yocto features for various machines

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append_fri2 = " file://bt.cfg \ 
                        file://rtc-iio.cfg \
                        file://hwmon.cfg \
                        file://iotop.cfg \
                        file://no8042.cfg \
                        file://nopchcan.cfg \
                      "
KERNEL_FEATURES:append_fri2 = " \
                                  features/netfilter/netfilter.scc \
                                  features/usb-net/usb-net.scc \
                                  features/wifi/wifi-all.scc \
                                  features/media/media-all.scc \
                                  features/leds/leds \
                                  features/rfkill/rfkill \
                                "


