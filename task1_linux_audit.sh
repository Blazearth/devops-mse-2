#!/bin/bash
# Test Case 1 — Linux System Audit & User Management

# Task 1: Check the identity of the currently logged-in user
whoami

# Task 2: Check which users are currently logged in and what they are doing
w

# Task 3: View the login history of the system
last

# Task 4: Display complete system information, hostname, and uptime
uname -a
hostname
uptime

# Task 5: Create two groups: developers and qa
sudo groupadd developers
sudo groupadd qa

# Verify both groups were created
grep -E "developers|qa" /etc/group

# Display complete list of groups
cat /etc/group

# Task 6: Create users and assign to their respective groups
sudo useradd -m -G developers aman
sudo useradd -m -G developers ritu
sudo useradd -m -G qa karan

# Verify users and their groups
id aman
id ritu
id karan

# Task 7: Delete user ritu (resigned employee)
# Ensure no active sessions
sudo pkill -u ritu

# Delete her account along with her home directory
sudo userdel -r ritu

# Verify ritu no longer exists
id ritu
