# Classting Company

이 사이트는 [hexo](http://hexo.io/)로 만들었습니다.


# Setup

`npm`과 `node`가 설치되어 있어야 합니다.

[brew 설치가이드](https://brew.sh/)

[npm, node 설치가이드](http://hochulshin.com/node-install-osx/)


## Developing & Testing

`localhost:4000`로 접속하세요:

```
$ npm install -g hexo-cli
$ npm install
$ hexo server
```


## Writing Tip

Post를 생성합니다.
생성 규칙은 아래와 같습니다.

```
$ hexo g new {파일이름} --lang {ko 또는 en}
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

언어별 문구 정보를 받아올 수 있습니다:

```
$ sh ./pull_locale.sh
```

히스토리와 상관없이 새로운 문구 정보가 포함되어 배포할 수 있습니다:

```
$ sh ./deploy.sh
```

1~2분 후, [company.classting.net](https://compnay.classting.net)을 확인하세요.


## Library

news 페이지에 post panination을 위한 library를 npmjs에 등록되어 있습니다.

[hex-generator-news](https://www.npmjs.com/package/hexo-generator-news)

[hex-generator-news repository](https://github.com/classtinginc/hexo-generator-news)

