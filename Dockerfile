FROM node:20

WORKDIR /app

# 1. 종속성 설치
COPY package*.json ./
RUN npm install

# 2. 소스 복사
COPY . .

# 3. 실행 권한 부여 (추가)
RUN chmod +x ./node_modules/.bin/vite

# 4. 개발 서버 실행
CMD ["npm", "exec", "vite", "--", "--host"]
