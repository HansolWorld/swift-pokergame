# swift-porkergame

## 기능구현
1. 프로젝트 생성
    - App 템플릿으로 "PockerGameApp" 생성
    - StatusBar 스타일 LightContent로 변경
	- project -> general -> deployment info -> status bar style
    - self.view 배경 변경
    - UIImageView 추가(StackView 사용하지 않기)
    - [x] ~~화면 크기를 구하고 균등하게 7등분해 이미지 표시~~
    - [x] ~~카드 가로:세로 비율을 1:1.27로~~
    - 3/16 16:18 완료
    - [x] ~~카드데이터 추상화~~
        - 속성은 모양 4개중 하나
        - 숫자는 1-13중 하나
        - 모양, 숫자도 데이터 구조로 표현
    - 클래스 이름, 변수 이름, 함수 이름 규칙 생각
    - [x] ~~카드 객체 인스턴스 출력~~
    - [x] ~~문자열 맵핑된 문자로 출력~~
    - 3/16 20:12 완료
    - 카드덱 구조체 구현
    - [x] ~~카드 갯수 반환 메서드 구현~~
    - [x] ~~전체 카드를 섞는 메서드 구현~~
    - [x] ~~카드 인스턴스중 하나를 반환하고 목록에서 삭제하는 메서드 구현~~
    - [x] ~~처음처럼 모든 카드를 다시 채워넣음~~
    - [x] ~~카드덱 기능을 확인할 수 있는 테스트 코드 추가~~
    - [x] ~~카드덱 함수를 호출해서 원하는데로 동작하는지 확인할 수 있어야 함~~
    - 3/20 21:17 완료
    - 딜러 구현
        - [ ] 카드 나눠주기 구현
        - [ ] 카드가 없을시 게임 종
        - [ ] 한번 뽑은 카드는 다시 사용하지 않 
    - 참가자 구현
        - [ ] 이름 구현
    - [ ] XCTest를 위한 Test타깃 추가
    - [ ] PokerGame 메소드를 호출해 테스트
    - [ ] 카드 뽑는 방식 선택 구현
    - [ ] 
## 학습계획
- [ ] Assets?
- [ ] Info.plist?
- [ ] 객체지향?

