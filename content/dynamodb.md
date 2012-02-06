---
title: Amazon DynamoDB 살펴보기
created_at: 2012-01-31
---

지난 18일, [Amazon.com의 CTO인 Werner Vogels의 블로그 포스트](http://www.allthingsdistributed.com/2012/01/amazon-dynamodb.html)와 함께, *또 하나의* NoSQL Database서비스가 공개되었습니다. 서비스 이름은 Amazon DynamoDB입니다. 대규모 인터넷 애플리케이션을 위해 설계한  빠르고, 확장성 좋은(scalable) NoSQL 데이타베이스 서비스라고 소개됐습니다. 또 하나라고 말했을 때 눈치채셨을지도 모르겠습니다만, Amazon.com에는 __이미__ SimpleDB라는 NoSQL 서비스가 있습니다. 이미 SimpleDB가 있는데 왜 DynamoDB를 새로 만들어 공개했을까요?

<iframe width="560" height="315" src="http://www.youtube.com/embed/oz-7wJJ9HZ0" frameborder="0" allowfullscreen="true"></iframe>

공개된 서비스 소개 동영상에 언급된 내용중, SimpleDB 대비 강조된 특이사항은 두가지입니다.

> 1. 원하는 요청처리속도(reqs/sec)를 설정하고 조정해서 사용 
> 1. SSD를 써서 빠른 속도를 제공

아마도 첫번째 언급한 요청처리속도(reqs/sec)을 설정해서 사용한다는 점이 더 중요한 차이점이 아닐까 생각합니다. 

추가해서 블로그 포스트에 적힌 내용을 옮겨봅니다. SimpleDB는 5년 동안 대단히 성공적으로 운영해 온 서비스이지만, 다음과 같은 한계가 있었습니다. 이 한계를 해결하기 위한 서비스가 DynamoDB라고 볼 수 있겠습니다.

> 1. Domain scaling limitations.
> 1. Predictability of Performance.
> 1. Pricing complexity.

스키마(scheme)를 지정할 필요 없이 데이터를 저장해 사용한다는 점은 SimpleDB와 같습니다. SimpleDB의 경우 각 속성은 String타입만 사용했었는데, DynamoDB의 경우, number 타입도 있고, set타입도 있는 점도 다릅니다. 

[DynamoDB의 과금](http://aws.amazon.com/dynamodb/#pricing)은 세가지 요소를 합해서 정해집니다.

> 1. 사용자가 신청한 read/write capacity에 따른 과금
> 1. 이용중인 데이터 저장공간에 따른 과금
> 1. 네트워크 트래픽에 따른 과금

나머지 요소는 S3등의 과금체계와 비슷하므로, 이해하기 쉽구요, 첫번째 요소가 DynamoDB에 한정된 과금체계입니다. 기존의 SimpleDB의 과금체계에서는 Machine Utilization이라는 모호한 요소가 있었는데, 이보다는 명확한 