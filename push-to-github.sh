#!/bin/bash
# 🚀 Trình Cà Phê Onboarding - GitHub Upload Helper Script

# Di chuyển đến thư mục chứa script
cd "$(dirname "$0")"

echo "====================================================="
echo "   HỖ TRỢ ĐẨY MÃ NGUỒN LÊN GITHUB - TRÌNH CÀ PHÊ"
echo "====================================================="
echo ""
echo "Bước 1: Tạo một kho lưu trữ (Repository) mới trên GitHub:"
echo "       - Truy cập: https://github.com/new"
echo "       - Đặt tên kho lưu trữ: trinh-onboarding-web"
echo "       - Chọn chế độ Public hoặc Private tùy ý."
echo "       - Nhớ KHÔNG chọn 'Add a README' hay '.gitignore' vì code ở máy đã có sẵn."
echo ""
echo "Bước 2: Copy địa chỉ của kho chứa đó (ví dụ: https://github.com/tai-khoan/trinh-onboarding-web.git)"
echo ""
echo "-----------------------------------------------------"
read -p "👉 Hãy dán (Paste) địa chỉ link GitHub của bạn vào đây: " repo_url

if [ -z "$repo_url" ]; then
    echo "❌ Lỗi: Bạn chưa nhập địa chỉ GitHub!"
    exit 1
fi

echo ""
echo "🔄 Đang tiến hành kết nối và đẩy code lên GitHub..."

# Kiểm tra xem remote origin đã tồn tại chưa, nếu có thì xóa đi để add mới
git remote remove origin 2>/dev/null

# Kết nối với GitHub
git remote add origin "$repo_url"

# Đổi tên nhánh thành main
git branch -M main

# Đẩy code lên GitHub
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "====================================================="
    echo "🎉 THÀNH CÔNG! Mã nguồn đã được đẩy lên GitHub hoàn tất."
    echo "🔗 Link GitHub của bạn: $repo_url"
    echo "====================================================="
else
    echo ""
    echo "❌ Thất bại: Không thể đẩy code lên GitHub."
    echo "Lưu ý: Bạn có thể cần đăng nhập tài khoản GitHub bằng Personal Access Token (PAT) hoặc SSH Key trên Terminal để cấp quyền đẩy code."
fi
