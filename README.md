# tilt_sensor

* Flutter Study
  - Stack
    - Stack 위젯은 자식 위젯들을 서로 겹치게 쌓아 자유롭게 배치가능
    - Colum, Row와 달리 여러 위젯을 깊이 방향으로 쌓을 때 유용
  - BoxDecoration
    - decoration Attribute에 사용되고 추가하게 된다면 Color 지정을 BoxDecoration의 color Attribute에서 지정해야한다.
  - StreamBuilder
    - 지속적으로 발생하는 StreamData를 업데이트가 될때마다 자동으로 UI를 다시 그려주기 때문에 StreamData와 관련된 UI를 그릴때 사용
  - SystemChrome.setPreferredOrientations
    - 해당 메서드를 사용하여 사용할 Orientation의 DeviceOrientation Type의 요소를 넣은 List를 파라미터로 넣으면 해당 Orientation으로만 작동
  - Positioned
    - 위치를 조정하고 싶은 widget을 child Attribute로 넣고 left, right, top, bottom의 Attribute의 값을 지정하면 Child의 위치를 조정할 수 있음
  - sensors_plus Library
    - 해당 라이브러리로 디바이스의 센서 데이터를 event 발생 시 StreamData로 받을 수 있다.

---
### 위에 정렬된 내용을 사용하여 수평 측정 기능을 제공하는 Android, iOS, Web Flutter App Study
- [참고 강의](https://www.inflearn.com/course/플러터-초입문-왕초보/dashboard)
