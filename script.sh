#!/bin/bash

# 사용자로부터 깃허브 토큰 정보를 읽어옵니다.
USER_ID=${USER_ID}
GITHUB_TOKEN=${GITHUB_TOKEN}
GITHUB_REPOSITORY="github.com/ATG-AMS/donghae-front.git"

# 작업 디렉토리를 '/app'으로 변경합니다.
cd /app

# '/usr/src/app' 내에 'donghae-front' 디렉토리를 만들고, 그곳에 레포지토리를 클론합니다.
git clone https://${USER_ID}:${GITHUB_TOKEN}@${GITHUB_REPOSITORY} --config core.askPass=true  /app

# branch 를 stage branch로 변경합니다.
git checkout stg

# 애플리케이션 종속성을 설치합니다.
npm install --legacy-peer-deps && touch /scripts/npm_done

# 무한 루프를 실행하여 컨테이너를 계속 실행 상태로 유지합니다.
tail -f /dev/null
