# Nginx를 기반으로 이미지를 생성
FROM nginx:alpine

# 작업 디렉토리 생성
WORKDIR /usr/share/nginx/html

# 현재 디렉토리의 모든 파일을 컨테이너로 복사
COPY . .

# 기본적으로 Nginx는 80 포트를 사용
EXPOSE 80

# Nginx 시작 명령 실행
CMD ["nginx", "-g", "daemon off;"]

