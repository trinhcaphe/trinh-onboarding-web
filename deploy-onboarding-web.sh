#!/bin/bash
# 🚀 Trình Cà Phê Onboarding - One-click Deploy Script
# Script này tự động sử dụng node tích hợp sẵn để deploy website lên Surge.sh

# Di chuyển đến thư mục chứa script
cd "$(dirname "$0")"

# Thiết lập đường dẫn tới Node.js cục bộ
export PATH="$PWD/scratch/node-v20.11.0-darwin-arm64/bin:$PATH"

echo "🔄 Đang chuẩn bị deploy website lên trinh-caphe-onboarding.surge.sh..."

# Chạy deploy lên Surge
printf "thanhson-trinh-coffee@outlook.com\nTrinhCapheOnboarding2026!\n" | npx surge trinh-onboarding-web trinh-caphe-onboarding.surge.sh

echo "✅ Đã deploy thành công!"
