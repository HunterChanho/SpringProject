# HomeTheater
2022-01-26(프로젝트 기본설정 완료)

![erd1](https://user-images.githubusercontent.com/90680271/151178002-6aba8091-32a8-4b04-a4fe-85e868c3d061.png)
이번 프로젝트 erd 테이블 설계 이번 erd를 설계하면서 테이블 연관관계와 기본키, 복합키 , 외래키에대해 좀더 자세히 알게되었다.


2022-01-27(예약페이지구현)

![01_27](https://user-images.githubusercontent.com/90680271/151337329-77e6d0f5-6d26-4043-a887-fd0ee31d298b.JPG)
디자인은 모든기능을 완성하고 다듬을 예정이다.
seatAndTime table에 se_date칼럼을 추가했다.
날짜에 따른 그 영화(mo_number)에 시간을 다중 셀렉트로 구현하고 싶었다.
ajax를 통해 시도해 보았으나 영화 번호(mo_number) 날짜(se_date) 두 가지 정보가 다 필요해서 컨트롤로 객체를 반환하고 싶은데 아직 방법을 모르겠다.
좀 더 공부해 보고 es6로는 가능한지 자바스크립트를 세밀하게 공부해 봐야겠다.



2022-01-28(좌석페이지구현)

![좌석페이지](https://user-images.githubusercontent.com/90680271/151520566-2c30f1b3-0ce2-4a29-957c-1816791586b2.JPG)
좌석페이지에서 결제 컨트롤까지 연결했다.
만들면서
seatandtime table의 갯수가 비정상적으로 많다는 생각이들었다
예를들어 한영화가 30개의 좌석에 5일동안 하루에 8번씩 상영한다고 가정하면 테이블이 1200개나 필요하다. 너무 많은 느낌이다.
좌석을 보여주는 화면구성을 할때 자바스크립트로 만들고 싶었다. 하지만 seatAndTime 테이블에서 좌석 정보와 시간을 끌어와서 써야하는데
자바스크립트는 클라이언트단이고 Jsp는 서버단이여서 어떻게 연결해야 할지 몰라서 일단 이렇게 만들었다. (ajax같은 기능을 쓰면될거같은데)
전체적으로 코드가 많이 더러운거같다 모든 기능을 구현하고 다듬어야겠고 다른기능을 추가 할 수 있는지 고민해봐야겠다.


2022-01-29(좌석페이지구현)

좌석 초기화 ,페이지 로드될때 이미 예약된 좌석 검은색으로 표현, 좌선 선택 안하고 결제하기 누르면 alert발생능 구현