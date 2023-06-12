DESCRIPTION = "Enable gnome-icon-theme in gtkrc"
SUMMARY = "Enable gnome-icon-theme in gtkrc"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

RDEPENDS:${PN} = "gnome-icon-theme"
PR = "r2"

ALLOW_EMPTY:${PN} = "1"
PACKAGE_ARCH = "all"

pkg_postinst:${PN}() {
#!/bin/sh
mkdir -p $D${sysconfdir}/gtk-2.0
touch $D${sysconfdir}/gtk-2.0/gtkrc
sed -i /gtk-icon-theme-name/d $D${sysconfdir}/gtk-2.0/gtkrc
echo 'gtk-icon-theme-name = "gnome"' >> $D${sysconfdir}/gtk-2.0/gtkrc
}

