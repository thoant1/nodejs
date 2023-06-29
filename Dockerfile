# Sử dụng image gốc đã có Node.js
FROM node:16-alpine

# Set thư mục làm việc trong container
WORKDIR /

# Copy package.json và package-lock.json vào container
COPY package*.json ./

# Cài đặt các dependencies
RUN yarn 

# Copy mã nguồn của ứng dụng vào container
COPY . .

# Build ứng dụng 
RUN yarn run build

# Expose cổng 8080 
EXPOSE 8080

# Khởi chạy ứng dụng React trong container
CMD [ "yarn", "start" ]