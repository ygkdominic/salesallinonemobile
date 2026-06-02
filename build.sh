#!/bin/bash
echo "=== SW 버전 갱신 시작 ==="

BUILD_TIME=$(date +%Y%m%d%H%M%S)
echo "빌드 시각: $BUILD_TIME"

# sw.js 복사 후 치환
cp sw.js sw.js.bak
sed "s/NETLIFY_BUILD_TIME/${BUILD_TIME}/g" sw.js.bak > sw.js

echo "=== 치환 결과 확인 ==="
grep "CACHE_NAME" sw.js

echo "=== SW 버전 갱신 완료 ==="
