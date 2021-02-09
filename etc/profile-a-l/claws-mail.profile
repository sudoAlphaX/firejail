# Firejail profile for claws-mail
# Description: Fast, lightweight and user-friendly GTK+2 based email client
# This file is overwritten after every install/update
# Persistent local customizations
include claws-mail.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.claws-mail

mkdir ${HOME}/.claws-mail
whitelist ${HOME}/.claws-mail

# If you use python-based plugins you need to uncomment the below (or put them in your claws-mail.local)
# Allow python (blacklisted by disable-interpreters.inc)
#include allow-python2.inc
#include allow-python3.inc

whitelist /usr/share/doc/claws-mail

# private-bin claws-mail,curl,gpg,gpg2,gpg-agent,gpgsm,gpgme-config,pinentry,pinentry-gtk-2

dbus-user filter
dbus-user.talk ca.desrt.dconf
dbus-user.talk org.gnome.keyring.SystemPrompter
# if you use the notification plugin you need to uncomment the below (or put them in your claws-mail.local)
# dbus-user.talk org.freedesktop.Notifications

# Redirect
include email-common.profile
