#!/bin/sh
sudo sed -i 's/switch-to-application*/# switch-to-application/g' /usr/share/glib-2.0/schemas/50_pop-session.gschema.override
sudo /usr/bin/glib-compile-schemas /usr/share/glib-2.0/schemas/
echo "please reboot..."
