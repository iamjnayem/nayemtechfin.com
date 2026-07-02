#!/usr/bin/env bash
set -euo pipefail

DOMAIN="${1:-https://nayemtechfin.com}"

echo "=== Checking tools ==="

if command -v ~/go/bin/hey &> /dev/null; then
  echo "--- hey: 1000 requests, 50 concurrent ---"
  ~/go/bin/hey -n 1000 -c 50 "$DOMAIN"
elif command -v ab &> /dev/null; then
  echo "--- ab: 1000 requests, 50 concurrent ---"
  ab -n 1000 -c 50 "$DOMAIN/"
elif command -v k6 &> /dev/null; then
  echo "--- k6: 1 VU, 30s ---"
  k6 run - <<EOF
import http from 'k6/http';
import { sleep, check } from 'k6';

export const options = {
  stages: [
    { duration: '10s', target: 10 },
    { duration: '10s', target: 50 },
    { duration: '10s', target: 0 },
  ],
};

export default function () {
  const res = http.get('$DOMAIN');
  check(res, { 'status 200': (r) => r.status === 200 });
  sleep(1);
}
EOF
else
  echo "No load testing tool found."
  echo "Install one and re-run:"
  echo "  apt install apache2-utils -y           # ab"
  echo "  go install github.com/rakyll/hey@latest  # hey"
  echo "  curl -fsSL https://k6.io/install.sh | bash  # k6"
fi

echo "=== Container stats ==="
docker stats portfolio --no-stream --no-trunc 2>/dev/null || echo "(Docker not available)"
