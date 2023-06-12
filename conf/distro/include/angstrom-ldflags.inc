
# Set as-need to an intermediate var...
ASNEEDED = "-Wl,--as-needed"

# ...so we can blacklist it for recipes that break with it
ASNEEDED:pn-console-tools = ""
ASNEEDED:pn-distcc = ""
ASNEEDED:pn-openobex = ""
ASNEEDED:pn-icu = ""
ASNEEDED:pn-xserver-kdrive-xomap = ""
ASNEEDED:pn-minimo = ""
ASNEEDED:pn-pciutils = ""
ASNEEDED:pn-puzzles = ""
ASNEEDED:pn-dialer = ""
ASNEEDED:pn-pulseaudio = ""
ASNEEDED:pn-python = ""
ASNEEDED:pn-libproxy = ""
ASNEEDED:pn-libxsettings-client = ""
ASNEEDED:pn-libmatchbox = ""
ASNEEDED:pn-faac = ""
ASNEEDED:pn-wireless-tools = ""
ASNEEDED:pn-ffmpeg = ""

# Append it to TARGET_LDLFLAGS 
TARGET_LDFLAGS += "${ASNEEDED}"

