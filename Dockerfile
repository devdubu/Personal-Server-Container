# NodeJS 전용 이미지
FROM node:16-alpine

RUN apk add --no-cache python3 g++ make
# 
RUN mkdir /app
# /app 디렉토리 생성 디렉토리를 Work 디렉토리로 생성
WORKDIR /app

# frontEnd or BackEnd 디렉토리를 옮기기 현재를 기준으로는 아래의 경로로 옮긴다.
COPY . .

RUN yarn install --production

EXPOSE 3000

CMD ["node", "backend/app.js"]
