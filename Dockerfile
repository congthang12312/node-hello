FROM node:12

WORKDIR /app

ADD index.js *.json /app/

# Cài đặt các gói phụ thuộc (nếu cần)
RUN npm install

# Khai báo cổng mà ứng dụng của bạn lắng nghe (thay đổi thành cổng của ứng dụng thực tế)
EXPOSE 3000

# Khởi chạy ứng dụng khi container được chạy (thay đổi thành lệnh thực sự của ứng dụng của bạn)
CMD npm start
