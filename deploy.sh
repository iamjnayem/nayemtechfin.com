#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
VPS_USER="root"
VPS_HOST="your-server-ip"

echo "=== Building portfolio locally ==="
cd "$REPO_DIR"
docker build -t portfolio:latest .

echo "=== Saving image ==="
docker save portfolio:latest | gzip > portfolio.tar.gz

echo "=== Copying to VPS ==="
scp portfolio.tar.gz "$VPS_USER@$VPS_HOST:/tmp/"
scp -r "$REPO_DIR/vps" "$VPS_USER@$VPS_HOST:/opt/deploy/"

echo "=== Deploying on VPS ==="
ssh "$VPS_USER@$VPS_HOST" << 'EOF'
  docker load < /tmp/portfolio.tar.gz
  rm /tmp/portfolio.tar.gz

  cd /opt/deploy/vps
  docker compose up -d --force-recreate portfolio
  docker compose restart reverse-proxy

  echo "=== Cleaning up old images ==="
  docker image prune -f
EOF

echo "=== Done! ==="
