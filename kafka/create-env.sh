#!/bin/bash

# Kiểm tra hệ điều hành
if [[ "$(uname)" == "Darwin" ]]; then
    # Lấy IP trên macOS (có thể thay đổi en0 nếu bạn dùng Wi-Fi hoặc adapter khác)
    SERVER_IP=$(ipconfig getifaddr en0)
else
    # Lấy IP trên Linux
    SERVER_IP=$(hostname -I | awk '{print $1}')
fi

# Ghi IP vào file .env
echo "SERVER_IP=$SERVER_IP" > .env
