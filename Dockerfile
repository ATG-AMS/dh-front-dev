# Node.js v14 Alpine 이미지를 가져옵니다.
FROM node:14-alpine

LABEL org.opencontainers.image.source=https://github.com/ATG-AMS/dh-front-dev

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# npm 버전을 7로 설정합니다.
RUN npm install -g npm@7 --no-cache

# git을 설치합니다.
RUN apk add --no-cache git

# 외부에서 접근 가능한 포트를 엽니다.
EXPOSE 3000-3100

# 스크립트를 복사합니다.
COPY script.sh healthcheck.sh ./

# 스크립트를 실행 가능하도록 설정합니다.
RUN chmod +x script.sh healthcheck.sh

# HEALTHCHECK를 설정합니다.
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD /app/healthcheck.sh

# 컨테이너가 시작될 때 스크립트를 실행합니다.
CMD [ "sh", "/app/script.sh" ]