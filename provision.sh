#!/usr/bin/env bash
set -euo pipefail
apt update -y && apt upgrade -y
apt install -y nginx
systemctl enable nginx
systemctl start nginx
echo '<h1>Servidor provisionado automaticamente</h1>' > /var/www/html/index.html
