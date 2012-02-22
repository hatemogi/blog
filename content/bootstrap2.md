---
title: Bootstrap 2
kind: article
created_at: 2012-02-21
---

## 부트스트랩 2

[![bootstrap2](/img/bootstrap2/bootstrap2.png)](http://twitter.github.com/bootstrap/)

트위터의 부트스트랩(bootstrap)의 버전이 1.4에서 2.0으로 올라갔습니다. 부트스트랩은 [이전 포스팅](/bootstrap/)에서도 간략히 소개했습니다만, 트위터에서 만들어 공개한 CSS/JS 파일입니다. 미리 잘 정의된 CSS요소들을 사용해서 다양한 브라우저에서 문제없고도, 깔금하게 구조화된 HTML5페이지를 구성할 수 있게 도와줍니다. 저도 이 부트스트랩덕분에, 이 블로그를 만드는데 큰 도움을 받고 있습니다.

## Examples

~~~~
<div class="well">
  <button class="btn">선택</button>
  <button class="btn btn-primary">저장</button>
  <button class="btn btn-danger">삭제</button>
</div>
~~~~
{: .prettyprint}

완전 간단한 예를 들어(너무 간단해서 시시하겠지만), 위와 같이 button 엘리먼트의 class를 골라놓으면, 아래와 같이 보기좋게 표현됩니다. 

<div class="well">
<button class="btn">선택</button>
<button class="btn btn-primary">저장</button>
<button class="btn btn-danger">삭제</button>
</div>

그 외에도 웹사이트에서 유용이 써볼만한 jQuery플러그인들을 비롯해 많은 요소들이 포함되어있습니다. CSS를 잘알지 못해도, 기본적인 웹사이트 구성을 보기좋게 할 수 있게 되는거죠.

## 1.4에서 달라진 점

제 블로그도 1.4로 돌리다가, 2.0 출시 후에 업그레이드했습니다. ["1.4에서 업그레이드 하기"](http://twitter.github.com/bootstrap/upgrading.html)를 참고해서 하나하나 고치면 됩니다. 저도 그새 부트스트랩을 이용해서 개발하는 작은 프로젝트가 **세 개나** 되다보니, 클래스명 다 찾아서 고치는 일도 꽤 번거로운 일이더군요. 자잘한 차이점이 여럿 있겠지만, 가장 두드러진 차이점은, [Responsive Design](http://twitter.github.com/bootstrap/scaffolding.html#responsive)이 적용됐다는 점과, [less컴파일러 설치 없이 커스터마이즈할 수 있다](http://twitter.github.com/bootstrap/download.html)는 점이 아닐까 싶습니다.

### Responsive Design

어디선가 "반응형 웹"이니 뭐니 하는 용어들을 들어봤는데요, 이게 그거인가 싶습니다. (아마도 이 블로그에 적용된거 보다는 더 거창해야 반응형 웹이다라고 말할 수 있지 않나 걱정됩니다만) 화면크기 변화에 따라 레이아웃이나 크기등이 맞춰 변해주네요. 전 그저 기본 컴포넌트를 썼을뿐인데, 스크린크기에 따라 레이아웃이 맞춰집니다. 아이폰에서 이 블로그에 들어와 보시면, 화면이 딱 맞게 바뀌어요. 아이폰을 가로모드로 봐도 화면이 맞춰지구요. 웹에서 보시고 계시다면, 브라우저 창을 작게 줄어보시면 그에 맞게 화면이 맞춰지는걸 보실 수 있을거에요. 훌륭하죠. 제가 한건 그저 부트스트랩의 클래스들을 시키는대로 가져다 놓았을 뿐입니다. 

### 커스터마이즈

부트스트랩에 정의된 요소들의 속성을 바꾸려면, [부트스트랩의 소스를 GitHub에서](https://github.com/twitter/bootstrap/) 내려받아서, 손수 필요한 속성들을 편집한 뒤, [less컴파일러](http://lesscss.org/)로 컴파일하면 됩니다. 벌써, 말부터 어렵죠? 1.4까지는 이렇게 하라고 안내됐던것 같은데, 2.0으로 바뀌고 사이트에 가보니, ["Customize"](http://twitter.github.com/bootstrap/download.html)에서 웹화면으로 제공하고 있습니다. 디자인을 하시는 분들은 여기서 입맛에 맞게 조절해서 다운받아서 사용하시면 좋을 것 같아요. 개발자뿐만 아니라, 웹디자인하시는 분들도 CSS 잘 다루기는 번거로우실 텐데, 이 커스터마이즈까지 활용하시면 멋진 디자인을 훨씬 더 편리하게 해내실 수 있지 않을까요?
*(뭐, 저야 기본 디자인으로 충분합니다 ㅠ.ㅠ)*
 
## 부트스트랩과 웹개발 

웹개발의 자바스크립트 활용에 있어 [jQuery](http://jquery.com/)가 널리 쓰이다 싶이, HTML5/CSS3활용에 있어서는 부트스트랩이 사실상의 표준으로 여겨질만큼 널리 쓰이게 되지 않을까 싶습니다. 아마도 조금 성급한 판단이겠지만, 그만큼 유용하게 느껴진다는 뜻 정도로 해석해주시면 좋겠네요. 
