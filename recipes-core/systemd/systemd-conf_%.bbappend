FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://journald.conf"

do_install:append() {
        install -d ${D}${sysconfdir}/systemd
        cp ${WORKDIR}/journald.conf ${D}${sysconfdir}/systemd
}

FILES:${PN} += "${sysconfdir}/systemd"
