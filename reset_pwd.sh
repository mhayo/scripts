#!/bin/bash

# This following instructions reset the root password in Red Hat Enterprise Linux by booting into single-user mode
# and performing necessary system changes. This should work for most RHEL-based systems including
# CentOS and Fedora.

# Step 1: Remount the filesystem as writable
# We need to make the root filesystem writable so that we can make changes.
mount -o remount,rw /sysroot

# Step 2: Change root filesystem into a chroot environment
# Change the root directory into /sysroot so that we can interact with the system as if it were fully booted.
chroot /sysroot

# Step 3: Reset the root password
# Use the 'passwd' command to reset the root password. The user will be prompted to enter a new password.
passwd

# Step 4: Ensure SELinux relabeling
# After resetting the password, we need to ensure SELinux labels are corrected on the next boot.
# This is important to avoid permission issues with the new password.
touch /.autorelabel

# Step 5: Reboot the system
# After completing the steps, reboot the system to boot it normally with the new credentials.
exit
reboot
