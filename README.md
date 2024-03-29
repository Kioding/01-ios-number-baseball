# 숫자야구게임 프로젝트


## 타임라인 ('21.02.23 ~ '21.02.26)

2/23 
- 팀그라운드룰 설정
- step 1 각자 설계해보기

2/24
- 각자 짜온 코드를 보며 코드리뷰
- step 1 코드 합치기 및 Pull Request
- 함수 호출방식에 대해 논의

2/25
- 13:30~15:00 리뷰받은 내용 검토 
    - naming, 줄바꿈, 변수명, 함수기능단위
- step 2 각자 설계해보기

2/26
- step 2 기능구현 완료 및 PR

<br>

## 숫자야구게임 프로젝트 - 팀그라운드룰

### **👬 팀원**
@Kioding
@ryan-son

### **우리 팀만의 규칙**

- 오후 8시 ~ 10시는 연락하지 않도록 한다.

### **스크럼**

- 오전 9시 10분부터 최대 20분 간 스크럼을 진행한다.

-  어제 한 일, 오늘 할 일, 컨디션, 기술적 이슈

### **프로젝트**

- 브랜치 이름 규칙: 닉네임 다음에 기능을 기술
 예) kio-feature-1, ryan-feature-2

- 커밋 메시지 규칙
 커밋 메시지는 한글로 한 눈에 알아보기 쉽게 작성 
예) 게임 화면 인터페이스 구성

- 깃헙 활용 방법
    - 예) README.md 문서에 본인의 작업 내용과 일정을 기록하여 공유

<br>

## 숫자야구게임 프로젝트 구현내용   
![화면 기록 2021-04-21 오후 11 15 58](https://user-images.githubusercontent.com/65153742/115569165-ece53c00-a2f7-11eb-804f-fdf58bcee659.gif)

### 1. 게임 시작 화면   
![스크린샷 2021-04-21 오후 10 52 26](https://user-images.githubusercontent.com/65153742/115565406-4e0b1080-a2f4-11eb-9ffe-7f0d93c97aff.png)
    
#### 1-1. 게임 시작 선택
![스크린샷 2021-04-21 오후 10 56 57](https://user-images.githubusercontent.com/65153742/115566093-ebfedb00-a2f4-11eb-923b-43df447c33dd.png)
    
#### 1-2. 게임 종료 선택   
![스크린샷 2021-04-21 오후 10 56 39](https://user-images.githubusercontent.com/65153742/115566097-ed300800-a2f4-11eb-9d36-543f10548420.png)
    
<br>

### 2. 게임 진행 화면   
![스크린샷 2021-04-21 오후 11 07 59](https://user-images.githubusercontent.com/65153742/115567813-9f1c0400-a2f6-11eb-9ca9-5adff25525ea.png)

#### 2-1. 게임 정답 기회 9번 진행   
![스크린샷 2021-04-21 오후 11 10 43](https://user-images.githubusercontent.com/65153742/115567995-d12d6600-a2f6-11eb-8367-e7eb2e7f2d94.png)

<br>

### 3. 게임 종료
#### 3-1. 9번의 시도 중 정답일 경우 "사용자 승리" 출력 후 게임 재시작 
![스크린샷 2021-04-21 오후 11 11 49](https://user-images.githubusercontent.com/65153742/115568121-f4f0ac00-a2f6-11eb-97ce-72ba6fc161b9.png)

#### 3-2. 9번의 시도에도 실패할 경우 "컴퓨터 승리" 출력 후 게임 재시작
![스크린샷 2021-04-21 오후 11 13 18](https://user-images.githubusercontent.com/65153742/115568358-2c5f5880-a2f7-11eb-9065-aeee01cb91ac.png)

<br>

## 학습 키워드
- 배열
    - 빈 배열 생성
    - 배열 요소 추가 append
    - 배열 요소 확인 contains
- 무한 반복 while true
- Int.random의 활용
- 옵셔널: if let
- 제어 흐름 break
- if문 vs switch문

<br>
    
## 참고
[야곰 아카데미](https://www.yagom-academy.kr/)
