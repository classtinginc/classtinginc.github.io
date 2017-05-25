# Classting Company

이 사이트는 [hexo](http://hexo.io/)로 만들었습니다.


# Setup

`npm`과 `node`가 설치되어 있어야 합니다.

[brew 설치가이드](https://brew.sh/)
[npm, node 설치가이드](http://hochulshin.com/node-install-osx/)

```
$ npm install -g hexo-cli
```

## Developing & Testing

`localhost:4000`로 접속하세요:

```
$ npm install
$ hexo server
```

## Writing Tip

Post를 생성합니다.
생성 규칙은 아래와 같습니다.

```
$ hexo new {파일이름} --lang {ko 또는 en}
```

`source/{ko 또는 en}`에 있는 파일을 열고, 상단의 `Front-matter`를 작성합니다.

```
---
title: { 생성된 이름 } # 변경 가능
date: { 날짜 } # 변경 가능
categories: # { news 또는 job }을 입력하세요
tags: # 태그를 입력하세요(news / press 등등..)
publisher: # 글의 출처 이름
link: # categories가 job일 경우에만 이동되야 할 link를 입력하세요.
---

```

내용은 markdown 형식으로 작성하십시오.

[markdown 문법 보기](https://gist.github.com/ihoneymon/652be052a0727ad59601)


## Deploying

***모든 작업은 반드시 Develop branch에서 작업합니다.***

### 일반 배포 ###

```
$ sh ./deploy.sh
```

### 정기 배포 ###

1. 최신 문구 정보를 받습니다.:

```
$ sh ./pull_locale.sh
```

2. 변경 사항이 있다면 commit합니다.:

```
$ git commit
```

3. 업데이트 될 버전을 기입하고, 배포합니다.

```
$ git checkout master
$ git pull origin master
$ git merge develop
$ git tag -a {버전 이름} -m "{버전 이름}"
$ git push origin master
$ git push origin {버전 이름}
$ git checkout develop

```

1~2분 후, [about.classting.com](https://about.classting.com)을 확인하세요.

[배포 현황 파악하러 가기](https://circleci.com/dashboard)

## Library

news 페이지에 post panination을 위한 library를 npmjs에 등록되어 있습니다.

[hex-generator-news](https://www.npmjs.com/package/hexo-generator-news)

[hex-generator-news repository](https://github.com/classtinginc/hexo-generator-news)
