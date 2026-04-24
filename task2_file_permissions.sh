#!/bin/bash
# Test Case 2 — File Permission Configuration

# Task 1: Navigate to home directory and create index.html
cd ~
touch index.html

# Task 2: Add HTML content to the file
cat > index.html << 'EOF'
<!DOCTYPE html>
<html>
  <head><title>Web Server</title></head>
  <body>
    <h1>Welcome to the Web Server</h1>
  </body>
</html>
EOF

# Task 3: Check the file's current default permissions
ls -l index.html

# Task 4: Grant full permissions (rwxrwxrwx) to all users
chmod 777 index.html
ls -l index.html

# Task 5: Change the file owner and group to www-data
sudo chown www-data:www-data index.html
ls -l index.html

# Task 6: Change the file permissions to 755
sudo chmod 755 index.html

# Task 7: Display final permissions and ownership to verify
ls -l index.html
