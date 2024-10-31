## Flutter

- 보여지는 것들이 Flutter의 엔진이 그린다

- IOS나 안드로이드 OS에게 그려달라고 하는게 아님

  (운영체제와 직접 소통을 하는게 아니란 말)

- 그래서 어느 OS에서도 동작하는 프로그램을 만들 수 있다

  (React Native같은 경우는 버튼을 하나 만들면 IOS와 안드로이드가 모양이 다르다)


- 디테일한 디자인이나 IOS나 안드로이드 앱처럼 보이지않는 커스터마이징한 앱을 만들고 싶으면 Flutter를 사용하면 된다

## Flutter 설치

```javascript
1. 니꼬쌤이 추천해주시는 Chocolatey를 다운 설치해야 합니다.
https://chocolatey.org/install
해당 사이트를 방문하고
다음 매뉴얼을 따라 설치하거나
A를 제외한 나머지부터 시작해주시면 됩니다.
A. Choose How to Install Chocolatey: Individual 선택
B. 작업 표시줄에 있는 윈도우 아이콘에서 우클릭 - 파워쉘 작업 관리자 실행
C. Get-ExecutionPolicy 명령어를 입력 하고 Restricted 해당 메시지가 반환 되는지 확인
D. Set-ExecutionPolicy AllSigned 혹은 Set-ExecutionPolicy Bypass -Scope Process
명령어 둘중 택1을 쉘에 입력해줍니다.
그 다음
E.
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
해당 명령줄을 복붙하거나 입력 후 실행합니다.
선택창이 출력 된다면 y를 입력해 설치해줍니다.
F. 설치가 끝나면 쉘에 choco 혹은 choco -?를 입력해 정상 설치 되었는지 확인합니다.
G. 에러 메시지 제외 다른 메시지가 출력 된다면 다음 작업을 이어 진행합니다.

2. Flutter 설치
A. 파워쉘을 닫지 말고 그대로 choco install flutter 를 입력해 설치해줍니다.
이때 선택창이 출력 된다면 y를 입력해줍니다.
B. 설치가 끝나면 flutter 명령어를 입력해 에러 메시지 제외 다른 메시지가 출력 되면 성공입니다.
(나 같은경우는 파워셀 재실행했음)

3. 안드로이드 연결
- https://docs.flutter.dev/get-started/install/windows#android-setup
해당 사이트를 방문해 가이드대로 진행하시면 됩니다. 제가 한 방법은 아래 기술하겠습니다.
A. https://developer.android.com/studio 안드로이드 스튜디오를 설치합니다.
설치 방법 및 가이드는 따로 없습니다. 에러 관련 메시지는 해당 에러 메시지를 복사해 구글에 검색해보시면 쉽게 해결 방법을 찾을 수 있습니다.
B. 자바 8버전 이상이 필요하고 환경 변수 설정이 필요합니다.
[있으신 분들은 스킵, 없으신 분들은 설치해주시면 됩니다.]
C. 안드로이드 스튜디오를 실행하고 -> 라이센스 전부 동의하고 그냥 설치 -> 설치 완료 후 첫화면에서 Plugins 에서 flutter 설치 -> 저새작후 그전에 이 블로그 글 확인 https://codingapple.com/unit/flutter-install-on-windows-and-mac/
-> new flutter project 시작 하고 왼쪽에서 flutter 선택

우측 상단 점3개 혹은 Device Manager를 찾아주시면 됩니다.
그 후 Create Device를 클릭해 애뮬레이터를 설정해주시면 됩니다.
[사용자마다 원하는 기기가 다르므로 원하시는 기기를 선택해주시면 됩니다.
저는 Pixel 3 XL 모델을 선택했습니다. ]
D. 기기를 선택했다면 Next를 누르고 릴리즈 버전을 골라주시면 되는데
ABI를 x86을 선택 하는 걸 권장하고 있습니다.
버전까지 선택했다면 Next를 누릅니다.
E. Verify Configuration 에서 하단에 Emulated Performance에서
Graphics를 Hardware-GLES 2.0으로 선택 후 Finish를 누릅니다.
안드로이드 설정까지는 끝났습니다. 다음 과정을 진행하시면 됩니다.

4. 콘솔 혹은 파워쉘에서 flutter doctor --android-licenses 명령어를 입력합니다.
특별한 메시지 없이 넘어가시면 좋지만 저는 이슈가 발생해 공유합니다.
빨간 메시지로
Android sdkmanager not found. Update to the latest Android SDK and ensure that the cmdline-tools are installed to resolve this.
해당 메시지가 출력된다면
안드로이드 스튜디오에서 SDK Manager를 실행합니다.
좌측의 System Settings 에서 Android SDK를 선택
화면에서 SDK Tools를 선택합니다
하단에 Hide Obsolete Packages 의 체크를 해제합니다.

저의 경우 command-line 이 없어 오류가 생겼는데
이런 경우
Android SDK Command-line Tools(latest)의 Status 부분을 확인해
Not Installed 인지 확인합니다.
Not Installed 라면 설치해주면 됩니다.
혹은 다른 메시지가 출력될 수 있는데
Android SDK Tools (Obsolete)가 Installed 상태인지 확인해주시면 됩니다.
선택 후 설치를 진행합니다.
설치가 완료되었다면 Finish를 클릭하고
flutter doctor --android-licenses를 쉘에서 다시 입력해
에러 메시지가 아닌 설치되는 듯한 화면이 출력 되면 됩니다.
이때 동의에 대해 묻는데 y 입력해주시면 됩니다.
All SDK package licenses accepted 메시지가 출력 되면 라이센스 동의가 끝났습니다.

쉘에 flutter doctor를 입력합니다.
뭔가 검사가 진행됩니다.
이슈가 없다고 뜨면 끝! 인데 저는 두 개 떴습니다..
하단에 공유합니다.
Windows 10 SDK이 없다고 출력 되면
(나 같은 경우엔 비주얼스튜디오가 없다고 떳음)
https://visualstudio.microsoft.com/ko/downloads/
해당 사이트에서 Visual Studio 2022 무료 다운로드를 설치해줍니다.
설치 창이 열리면 데스크톱 및 모바일에서 C++를 이용한 데스크톱 개발을 선택 후 설치합니다.

Unable to find bundled Java version 해당 메시지가 출력되면
안드로이드 스튜디오가 설치된 위치로 갑니다.
[따로 안 바꾸셨다면 아마 설치 위치는 C:\Program Files\Android\Android Studio 여기
일 껍니다.]
해당 파일에 jbr폴더 내용을 그대로 복사해 jre파일에 붙여넣기 합니다.

쉘이나 명령프롬트롬을 닫고
다시 열어 flutter doctor를 입력합니다.

No issues found!가 출력 되면 다 됐습니다
```

## Flutter 프로젝트 생성

```javascript
// 파워셀(관리자) 창에서 내가 원하는 디렉토리를 찾아가서 명령어를 만들어야한다
// cd c:\ 로 루트디렉토리로 간다음 ls로 목록보면서 찾아가자
// C:.\toonflix
flutter create 프로젝트이름
하면 생성이 된다.
flutter run 안하고 device 선택 후 디버그모드로 실행하면 되는것 같다
```

![image-20231109133846842](C:.\assets\image-20231109133846842.png)

```javascript
그다음 vs코드 실행후 flutter extention을 설치
// 그런데 vs코드를 실행할때 관리자 파워셀에서 실행해야 하더라.. 처음에 그걸로 세팅해서 그런가.. 폴더 찾아가서 ". code" 치면 된다
dart extension도 설치
그리고 lib 폴더에 main.dart 파일 연다
다른 많은 폴더들이있지만 우리에게 제일 중요한건 main.dart

```

![image-20231109145543735](C:.\assets\image-20231109145543735.png)

- vs 코드 오른쪽 아래 Windows 저부분 누르면 여러 에물레이터 바꾸기 가능(웹, 윈도우, 맥북이면 맥, 안드로이드스튜디오 모바일등)

## Flutter Widget

- 모든 것은 위젯이다. 블록처럼 위젯에 위젯을 쌓아가며 앱을 만드는 것.

- 위젯은 외우지 말고 찾아보며 사용하자. https://docs.flutter.dev/development/ui/widgets

- 모든 위젯은 build 메서드를 사용해야한다.(build 또한 자동 완성 가능)

- ![image-20231114143515436](C:.\assets\image-20231114143515436.png)

  ```dart
  void main() {
    runApp(App());
  }
  
  class App extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Hello Flutter!!"),
            centerTitle: true,
          ),
          body: Center(
            child: Text("hello World!"),
          ),
        ),
      );
    }
  }
  // class를 widget으로 만들어주는 flutter의 core widget인 StatelessWidget는 아주 기초적인 widget이며 화면에 먼가를 띄워주는일만 한다
  
  ```

  

- 모든 앱은 CupertinoApp(ios디자인) 혹은 MaterialApp(구글디자인) 중에 선택해야 하는데 (앱의 root 디자인 테마라서 필히 선택), materialapp이 훨씬 보기 좋으니 MaterialApp을 쓰자.

- 모든 화면은 Scaffold(구조)를 가져야 한다.

- vs코드에서는 class 만들때마다 , 붙이면 자동정렬해줌

- ![image-20231114145519962](C:.\assets\image-20231114145519962.png)

![image-20231114150111198](C:.\assets\image-20231114150111198.png)

- widget안에 widget들로 구성
- appBar와 body의 센터구성하는 방법 차이보자
- 그런데 appBar에는 body처럼 해도 중앙정렬 가능

```dart
home: Scaffold()
는 dart에서 배운 named constructor parameter 이다. 이게 뭐냐면 클래스나 함수가 인자를 받을 때 순서가 아닌 이름을 대상으로 받을 때 사용한다.
실제로 Scaffold()에 마우스를 올려보면 {} 를 사용해서 코딩이 되어있다.
```

![image-20231114154327366](C:.\assets\image-20231114154327366.png)

### Dart Classes Recap

![image-20231114160409751](C:.\assets\image-20231114160409751.png)

![image-20231114160538025](C:.\assets\image-20231114160538025.png)

- Text에 마우스 올려보면 data는 첫번째 파라미터로, required 필수고
- ? 붙은것들은 있어도되고 없어도 되는것들

![image-20231114160819382](C:.\assets\image-20231114160819382.png)

- 이렇게 필수로 넣어야하는것이 있는데 없으면 dart가 알려줌

```dart
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter!!"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          shadowColor: Colors.red,
          elevation: 10,
        ),
        body: Center(
          child: Text(
            "Hello WORLD",
            style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
```

## Flutter UI

![image-20231115145107288](C:.\assets\image-20231115145107288.png)

```dart
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF181818),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Hey, Cinna",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            )),
                        Text("Welcome Back",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 15,
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
// 여기까지 수평 수직 및 패딩, 정렬, 스타일등 배움
// 위, 아래로 놓고싶을땐 colunm 좌,우는 row
// padding: EdgeInsets << 이걸 선택해서 주자
```

### Flutter Develop Tools

![image-20231115171234404](C:.\assets\image-20231115171234404.png)

오른쪽 위 메뉴바에서 제일 오른쪽 파란아이콘 누르면 개발자모드

나의 scaffold 구조와 함께 미리보기도 제공

![image-20231115171428452](C:.\assets\image-20231115171428452.png)

- 왼쪽위에 전구 클릭후 휴대폰화면에서 직접 클릭을통해
- widget을 직접 선택이 가능하다

![image-20231115171602575](C:.\assets\image-20231115171602575.png)

### Buttons Section

- Container는 Div같은거다

```dart
Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text(
                          "Transfer",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                )
   // 왼쪽 노란색 버튼 만듬
   // decoration사용과 borderRadius등 사용
```

### VS Code setting

![image-20231116131302524](C:.\assets\image-20231116131302524.png)

- 파란줄이 뜨는 이유는 compile최적화를 위해 const 상수로 해주는게 좋기때문 

```dart
  "[dart]": {
    "editor.codeActionsOnSave": {
      "source.fixAll": true
    }, 
    "editor.formatOnSave": true,
    "editor.formatOnType": true,
  },
// open users settings json파일로 가서 위의 코드를 적어주고 저장하면 파란줄 다 사라지고 const여야 하는곳은 자동으로 다 됨, 저장할때 자동 코드 포맷도
"dart.previewFlutterUiGuides": true,
// 이 옵션은 vs코드 재실행하면 부모가 무엇인지 알려주는 가이드라인이 생김


// 플러터 외 다른 프로젝트에서 source.fixAll을 하고 싶지 않을 수도 있으니 알고있자
```

### Code Actions

- 왼쪽 전구를 클릭해서 실행
- 코드 덩어리 묶음을

![image-20231116134813487](C:.\assets\image-20231116134813487.png)

![image-20231116134832167](C:.\assets\image-20231116134832167.png)

- 이런식으로 요소들을 한번에 원하는 widget으로 감쌀수있음
- widget 지우기도 가능
- 커서를 두고 단축키를 사용해서 열면된다 기본 (Ctrl + .)

![image-20231116141140550](C:.\assets\image-20231116141140550.png)

- 코드 에러를 더 잘 볼 수있는 extentions 설치

### Reusable

- 위젯 재사용

![image-20231116143145908](C:.\assets\image-20231116143145908.png)

- 코드 작성 익숙해지고 이렇게 재사용을 해보는거 좋음
- 지금은 수동으로 폴더 만들고 해보자

![image-20231116143553182](C:.\assets\image-20231116143553182.png)

- 이런식으로 만들고 위젯 만들때 stateless 치면 자동완성 해주는게 있는데 우선은 수동으로 만들어보자

```dart
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;

  const Button(
      {super.key,
      required this.text,
      required this.textColor,
      required this.bgColor});
  // 위에처럼 바꿔주기위한 프로퍼티와 생성자함수 설정

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1F2123),
        borderRadius: BorderRadius.circular(45),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 45,
        ),
        child: Text(
          "Request",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
// button.dart 파일에 만든 나의 button 위젯
```

![image-20231116144600349](C:.\assets\image-20231116144600349.png)

- 하지만 생성자함수는 변수만 설정하고 저렇게 code Actions으로

![image-20231116144511203](C:.\assets\image-20231116144511203.png)

- 바로 생성할 수 있다

![image-20231116144841352](C:.\assets\image-20231116144841352.png)

- 그리고 각 하드코딩한 값들을 변수로 바꿔주어야하는데
- Padding에 const 때문에 더이상 const 값이 아닌 전송해오는 text값이 다르기 때문에 오류가나서 const지워주면 자동으로 vs코드가 아래처럼 const가 필요한곳으로 보정해줌

![image-20231116144938560](C:.\assets\image-20231116144938560.png)

![image-20231116145135333](C:.\assets\image-20231116145135333.png)

- 만약 기존처럼 text와 color값을 딱 지정해주면 vs코드가 위의 스샷처럼 const여야 한다는걸 알려줌

```dart
Button(
	text: "transfer",
	textColor: Colors.black,
	bgColor: Color(0XFFF1B33B)),
Button(
	text: "request",
	textColor: Colors.white,
	bgColor: Color(0xFF1F2123)),
// 기존 Container를 없애고 내가 만든 Button으로 대체
// 필요한 값을 미리 알고 정하기때문에 const
```

### Cards

![image-20231116153707235](C:.\assets\image-20231116153707235.png)

- 위 부분 자꾸 에러가 나서 살펴보니 위의 Row의 const를 없애주어야한다

- !! 중요한게 자동완성 때문에 이런 에러가 날 수도 있으니 잘보자

```dart
Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFF1F2123),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Euro",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "6, 428",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "EUR",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
    // 아이콘 추가 전 왼쪽부분 작업
```

### Icons & Transforms

![image-20231116173657135](C:.\assets\image-20231116173657135.png)

- 아이콘들이 엄청 많고 미리보기도 제공

![image-20231116174643935](C:.\assets\image-20231116174643935.png)

transform.scale을 통해서 아이콘 오버스케일 만듬

```dart
기존 아이콘 코드를 code actions을 통해서
widget으로 wrap해주고 transform.translate로 씌워줌       Transform.scale(
    scale: 2,
    child: Transform.translate(
      offset: const Offset(0, 20),
      child: const Icon(
        Icons.euro_rounded,
        color: Colors.white,
        size: 80,
      ),
    ),
  )
// 그리고 offset이 필수로 필요해서 offset 좌우 상하 값 입력
    
// transform.scale == 크기 변경
// transform.translate == 위치 변경
// clipBehavior == overflow 되었을때 container가 어떻게 할지 clip.HardEdge를 통해 넘쳐난곳 다 자름
```

### Reusable cards

```dart
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, amount, code;
  final IconData icon; // 타입은 아래서 마우스 올려보면 나옴
  final bool isInverted; // 색상 반전을 위한것

  final blackColor = const Color(0xFF1F2123); // 블랙컬러는 따로 정의해줘도됨

  const CurrencyCard({
    super.key,
    required this.name,
    required this.amount,
    required this.code,
    required this.icon,
    required this.isInverted,
  }); // 자동완성으로 만듬 생성자

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: isInverted ? Colors.white : blackColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInverted ? const Color(0xFF1F2123) : Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color:
                            isInverted ? const Color(0xFF1F2123) : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: isInverted
                            ? const Color(0xFF1F2123)
                            : Colors.white.withOpacity(0.8),
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(5, 15),
                child: Icon(
                  icon,
                  color: isInverted ? const Color(0xFF1F2123) : Colors.white,
                  size: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// main.dart 에서는
  const CurrencyCard(
    name: "Euro",
    amount: "6 424",
    code: "EUR",
    icon: Icons.euro_rounded,
    isInverted: false,
  ),
  Transform.translate(
    offset: const Offset(0, -20),
    child: const CurrencyCard(
      name: "Bitcoin",
      amount: "1 557",
      code: "BTC",
      icon: Icons.currency_bitcoin_rounded,
      isInverted: true,
    ),
  ),
  Transform.translate(
    offset: const Offset(0, -40),
    child: const CurrencyCard(
      name: "Dollor",
      amount: "7 137",
      code: "USD",
      icon: Icons.attach_money_rounded,
      isInverted: false,
    ),
  ),
// 이런식으로 만들어준다
```

- 화면이 넘쳐흐를떈 제일처음의 home의 padding 위젯을 SingleChildScrollView 위젯으로 감싸우면 화면넘어가는걸 스크롤링 할 수 있게된다

![image-20231117140439365](C:.\assets\image-20231117140439365.png)

![image-20231117141753881](C:.\assets\image-20231117141753881.png)

- 코드챌린지로 currency_card.dart 안에 translate값을 받아서 적용할 수 있게 넣어준다

## StateFul Widget

- statepractice 폴더에서 새로진행
- 그동안은 stateless 아무런 데이터 없이 위젯으로 변경되지 않을 ui출력해줄 뿐인데
- stateful은 위젯에 데이터를 담고 실시간 데이터 변화 보여줌

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void onClick() {
    counter = counter + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 203, 188),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click Counter",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              IconButton(
                iconSize: 40,
                onPressed: onClick,
                icon: const Icon(
                  Icons.add_box_outlined,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// 기존 코드인데 작동이 클릭해도 +1이 되지않는다 다음챕터에서..
```

### setState

```dart
  void onClick() {
    setState(() {
      counter = counter + 1;
    });
  }
// 상태가 변화하면 알려주고 그러면 다시 렌더링 하기때문에 그역할을 위한 setState함수 안에 넣는다
// 그런데 변화하는 데이터는 setState에 무조건 넣어야만 하는건 아니지만 넣어서 가독성 좋게 하는걸 권장
  void onClick() {
     counter = counter + 1;
    setState((){}))
  } // 이렇게 해도 작동은 한다 setState 호출할때마다 메서드가 한번더 호출받고 리렌더링 그런 개념인듯
```

```dart
class _MyAppState extends State<MyApp> {
  List<int> numbers = [];

  void onClick() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 203, 188),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click Counter",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              for (var n in numbers)
                Text(
                  '$n',
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
              IconButton(
                iconSize: 40,
                onPressed: onClick,
                icon: const Icon(
                  Icons.add_box_outlined,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// for문 사용해서 리스트에 하나씩 추가해서 렌더링도가능
```

### BuilContext

- Flutter는 앱의 모든 스타일을 한곳에서 관리가능하다 (색상, 크기, 글자 굵기등)

```dart
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
// 저렇게 theme을 설정했는데 다른 위젯들이 여기에 접근하기위해 context가 필요하다
class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "My Large Title",
      style: TextStyle(
        fontSize: 22,
        color: Theme.of(context).textTheme.titleLarge?.color,
          // 여기처럼 부모루트의 context에 접근이 가능하다. 다만 null값 방지를위해 ! 확신이나 ? 있으면 사용등으로 적어주어야 한다
      ),
    );
  }
}
```

### Widget Lifecycle

flutter의 생명주기

1. initState()

   build를 하기 전에 항상 먼저 실행된다.

   오직 단 한번만 실행된다

   대표적으로 API를 불러올 때 사용된다.

2. dispose()
   화면에서 사라질 때 실행한다.

![image-20231117170516987](C:.\assets\image-20231117170516987.png)

- 눈을 깜빡일때마다 아래 콘솔창처럼 생성되고 사라지고한다

```dart
class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
    print("처음 생성할때 build 전");
  }

  @override
  void dispose() {
    super.dispose();
    print("위젯 사라질때");
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "My Large Title",
      style: TextStyle(
        fontSize: 22,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
```

## Pomodoro APP

- statePractice 폴더에서 진행 
- 기존main.dart 주석처리하고 진행했음

### User Interface

- Flexible은 하나의 공간이 얼마만큼의 비율을 차지할지 정할 수 있다

![image-20231122160936727](C:.\assets\image-20231122160936727.png)

```dart
// home_screen.dart 코드
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "25:00",
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 89,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Center(
                child: IconButton(
              iconSize: 120,
              color: Theme.of(context).cardColor,
              onPressed: () {},
              icon: const Icon(Icons.play_circle_outline_outlined),
            )),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
// 위에 Row로 한번 씌워주고 여기 Expanded를 통해 화면끝까지 확장
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pomodoros",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 58,
                            fontWeight: FontWeight.w600,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


```

### Timer

![image-20231122165517079](C:.\assets\image-20231122165517079.png)

- Timer 함수는 dart 기본 제공인데 사용자가 누를때만 초기화하기위해서 late를 사용한다

```dart
import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds = 1500;

  bool isRunning = false;

  late Timer timer;
  // import 'dart:async' 해줘야 Timer가 불러와진다

  void onTick(Timer timer) {
    setState(() {
      totalSeconds -= 1;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    // onTick 다음 ()안하는 이유는 내가 실행이아니라 Timer 함수가 대신 실행해줄거라서
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "$totalSeconds",
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 89,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Center(
                child: IconButton(
              iconSize: 120,
              color: Theme.of(context).cardColor,
              onPressed: isRunning ? onPausePressed : onStartPressed,
              icon: Icon(
                isRunning
                    ? Icons.pause_circle_outlined
                    : Icons.play_circle_outlined,
              ),
            )),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pomodoros",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 58,
                            fontWeight: FontWeight.w600,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

```

- 재생과 멈출때 다른 함수 시키는 조건분기 잘 보자

### Date Format

![image-20231122173458323](C:.\assets\image-20231122173458323.png)

- duration 클래스를 이용해 시간으로 변화시켜서 분 초로 잘라냄

```dart
  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    // print(duration.toString().substring(2, 7));
    return duration.toString().substring(2, 7)[0].substring(2, 7);
  }
// 잘라내는 함수 만들어주고 return 값이 string으로 있기때문에 앞에 string 적어줌


          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                  // 이렇게 text부분엔 분초 return 해주는 함수로 대체해줌
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 89,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),



  void onRestart() {
    timer.cancel();
    setState(() {
      totalSeconds = twentyFiveMinutes;
      isRunning = false;
    });
  }
// 이건 재시작 함수

          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 120,
                  color: Theme.of(context).cardColor,
                  onPressed: isRunning ? onPausePressed : onStartPressed,
                  icon: Icon(
                    isRunning
                        ? Icons.pause_circle_outlined
                        : Icons.play_circle_outlined,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -10),
                  child: IconButton(
                    iconSize: 35,
                    color: Theme.of(context).textTheme.displayLarge!.color,
                    onPressed: onRestart,
                    icon: const Icon(
                      Icons.restore,
                    ),
                  ),
                )
              ],
            ),
          ),
// 재시작 버튼을 이렇게 만들어주었다
```

## Webtoon APP

### APP Bar

```dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
// appBar를 만들어준다
```

### Data Fetching

- Flutter나 Dart의 패키지를 찾고싶으면 pub.dev에서..
- api요청을 위해 pub.dev에서 http 검색

![image-20231123144535912](C:.\assets\image-20231123144535912.png)

- installing 가서 with dart 나 with flutter 커맨드라인 실행 또는

![image-20231123144703210](C:.\assets\image-20231123144703210.png)

![image-20231123144820514](C:.\assets\image-20231123144820514.png)

- pubspec.yaml에는 다양한 설정가능
- 이미지나 폰트를 설치하거나 다 적으면됨 주석되어있음

![image-20231123144934865](C:.\assets\image-20231123144934865.png)

- 이렇게 저장가능

- 그리고나서 추가로 flutter pub add http 해주자
- (나는 flutter pub add http 해줘야 완벽하게 설치되었음)

```dart
import 'package:http/http.dart' as http;
// as http 해주는이유는 아래 get등 함수를 좀더 구분잘해서 쓰기 위함

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse("$baseUrl/$today");
    // 뒤에 Uri 로 시작 유의
    await http.get(url);
    // 위에 as http로 import해와서 이렇게 사용
    // get보면 반환타입이 Future<response>임 이런 미래에 받을 결과값을 알려주는 타입은 await 사용
    // Future는 기다렸다가 완료 되었을때 Response라는 타입을 반환할거라고 알려주는것
    // 비동기처리를 위해 async await 사용해야함
    // 즉 코드가 처리될때까지 기다리라는 소리
  }
	if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
}

```

### FromJson

- 받은 데이터들을 하나하나 dart와 flutter에서 쓸수있는 클래스를 만들어줘야함

```dart
// models 폴더 webtoon_model.dart 파일에
class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel({
    required this.title,
    required this.thumb,
    required this.id,
  });
  // constructor를 자동완성이든 수동이든 만들어준다
  // 자동완성은 변수위에 전구로 만듬
}

```

```dart
  void getTodaysToons() async {
    final url = Uri.parse("$baseUrl/$today");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      // dynamic은 뭐든지 될수있는 타입
      // 받아오는 데이터를 잘 보고(오브젝트로 이루어진 리스트 타입) 이렇게 텍스트로 된 응답 body를 json으로 디코딩 해주면서 데이터도 받자
      return;
    }
    throw Error();
  }
```

```dart
// webtoon_model.dart
// named constructor 사용
class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> json)
                        // json은 그냥 map임 String이 key고 value가 dynamic인 Map임
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
  // 이런식으로 바꿔준다
}

// api_service.dart

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final toon = WebtoonModel.fromJson(webtoon);
        print(toon.title);
        // 여기도 for문 돌리면서 이렇게 바꿔줌
        // fromJson으로 named constructor를 받는데 flutter에서 매우 자주쓰임
        // 그러면 이제 toon이란 변수로 받으면 title, thumb, id 접근가능
      }
      return;
    }
    throw Error();

```

```dart
// api_service.dart  최종
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webtoonapp/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
  // 비동기라서 Future붙이고 List<WebtoonModel> 반환한다고 해줘야함
    List<WebtoonModel> webtoonInstances = [];
    // 웹툰 모델 만들고나서 나중에 빈걸로 변수 하나 만듬
    final url = Uri.parse("$baseUrl/$today");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final toon = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(toon);
        // 위에서 만든 빈 리스트 변수에 담아준다
      }
      // print(webtoonInstances) << 이거 결과 아래 스샷
      return webtoonInstances;
      // for문 돌리고나서 webtoonInstances도 return해줌
    }
    throw Error();
  }
}

```

![image-20231123161403087](C:.\assets\image-20231123161403087.png)

- 프린트해보면 이렇게 WebtoonModel 인스턴스로 이뤄진 리스트가 나옴!

### waitForWebToons

- Future를 보여주는 방법은 2가지가 있다

```dart
import 'package:flutter/material.dart';
import 'package:webtoonapp/models/webtoon_model.dart';
import 'package:webtoonapp/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebToons() async {
    webtoons = await ApiService.getTodaysToons();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    waitForWebToons();
    // initState에서 처음에 시작할때 데이터 받아오는 함수 실행
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
// 이게 첫번쨰 방법인데 기본적이지만 길고 복잡하다.
```

### Future Builder

- 첫번째 방법도 좋지만 대부분  state를 사용하지않음
- 좋은 widget과 프레임워크가 많음
- 다시 코드 지워주고 stateless widget으로 바꿔줌

```dart
import 'package:flutter/material.dart';
import 'package:webtoonapp/models/webtoon_model.dart';
import 'package:webtoonapp/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
              // snapshot은 future의 상태임, 그래서 데이터가 있는지 여부 체크
            return const Text("데이터 있음");
          }
          return const Text("아직 로딩");
        },
      ),
    );
  }
}
// 훨씬 간단해짐
```

### ListView

```dart
main.dart 파일에

return MaterialApp(
scrollBehavior: const MaterialScrollBehavior().copyWith(
dragDevices: {
PointerDeviceKind.mouse,
PointerDeviceKind.touch,
PointerDeviceKind.stylus,
PointerDeviceKind.unknown
},
),
home: HomeScreen(),
);

// 이렇게 추가해주면 웹과 안드로이드 모두 드래그 작동
```



- 많은 양의 데이터를 보여줄때 Col이나 Row는 적절하지 않다 ListView가 좋다

![image-20231205143627250](C:.\assets\image-20231205143627250.png)

- ListView 가장 기본 사용법, 하지만 모든걸 한번에 로딩해서 좋지않다. 사용자가 보고있는것만 로딩해야함(최적화)
- 그래서 ListView.builder를 사용

```dart
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
                // 방향
              itemCount: snapshot.data!.length,
                // 보여지는 개수(숫자 입력하면 그 개수만)
              itemBuilder: (context, index) {
                var webtoon = snapshot.data![index];
                // 인덱스를 통해 데이터 접근 가능
                return Text(webtoon.title);
              },
            );
          }
```

![image-20231205144732471](C:.\assets\image-20231205144732471.png)

- 이렇게 보여지는것만 로딩한다 매우 효율적

#### Seperated

- ListView 아이템들 사이사이에 넣어줄 구분해줄것들

  ```dart
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: snapshot.data!.length,
        itemBuilder: (context, index) {
          var webtoon = snapshot.data![index];
          return Text(webtoon.title);
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
          // 제목들 사이사이에 20칸의 너비가 들어간다
      );
    }
  ```

  

![image-20231205152237650](C:.\assets\image-20231205152237650.png)

- 이렇게 코드액션으로 extract method로 코드를 깔끔하게 뺄수있다

```dart
  body: FutureBuilder(
    future: webtoons,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            // 위쪽으로 50만큼 여백
            Expanded(
              child: makeList(snapshot),
            )
            // Expanded를 통해 남는 높이만큼을 자동으로 부여함 안그러면 높이를 알수 없어서 에러가 난다
          ],
        );
      }
```

```dart
  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Column(children: [
          Image.network(webtoon.thumb),
          // 이렇게 해서 이미지가 안뜨고 403에러 뜰때 해결방법 : https://gist.github.com/preinpost/941efd33dff90d9f8c7a208da40c18a9
          Text(webtoon.title),
        ]);
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
```

### Webtoon Cards

```dart
  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      // 전체적으로 패딩을 줌
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Column(children: [
          Container(
            width: 250,
            clipBehavior: Clip.hardEdge,
            // 이걸해야 둥글게 이미지 잘림
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: const Offset(7, 7),
                    color: Colors.black.withOpacity(0.5),
                  )
                ]),
              // 각각 이미지 그림자 주는법
            child: Image.network(
              webtoon.thumb,
              headers: const {
                "User-Agent":
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            webtoon.title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ]);
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
```

### Detail Screen

```dart
@override
Widget build(BuildContext context) {
return GestureDetector(
  // GestureDetector로 감싸준다
  onTap: () {
  // 클릭했을때
    Navigator.push(
      // 네비게이터 푸쉬를 통해 전환 애니메이션 효과까지 포함되어있다
      context,
      MaterialPageRoute(
        builder: (context) => DetailWebtoon(webtoon: webtoon),
       // DetailWebtoon 위젯을 렌더링하는거지만 새페이지처럼 전환효과와 함께 이동시켜줌
       fullscreenDialog: true,
       // 이 옵션은 애니메이션도 풀 스크린페이지처럼 해주고 뒤로가기가 아닌 x 버튼 활성화시킴
      ),
    );
  },
```

#### Hero Widget

```dart
  Hero(
    tag: webtoon.id,
    // detail페이지와 webtoon페이지의 이미지부분만 hero widget을 사용하면 같은 포스터로 애니메이션 전환되어서 매우 이쁘다.. tag만 똑같이 달아주면 된다
    child: Container(
      width: 250,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(7, 7),
              color: Colors.black.withOpacity(0.5),
            )
          ]),
      child: Image.network(
        webtoon.thumb,
        headers: const {
          "User-Agent":
              "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
        },
      ),
    ),
  ),
```

### ApiService

```dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webtoonapp/models/webtoon_detail_model.dart';
import 'package:webtoonapp/models/webtoon_episode_model.dart';
import 'package:webtoonapp/models/webtoon_model.dart';

class ApiService {
  // 모든 method와 property를 static으로 바꿈 왜냐면 state가 없으니까 고정
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    // 웹툰 모델 만들고나서 나중에 빈걸로 변수 하나 만듬
    final url = Uri.parse("$baseUrl/$today");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final toon = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(toon);
      }

      return webtoonInstances;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getToonById(String id) async {
    late WebtoonDetailModel webtoonDetailInstance;
    // 여긴 웹툰 디테일 모델 변수를 따로 안뺴고 바로 리턴시켜도됨

    final url = Uri.parse("$baseUrl/$id");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);
      webtoonDetailInstance = WebtoonDetailModel.fromJson(webtoon);

      return webtoonDetailInstance;
    }
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getEpisodesById(String id) async {
    // 에피소드들 가져오는 API
    List<WebtoonEpisodeModel> episodeInstances = [];

    final url = Uri.parse("$baseUrl/$id");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final episodes = jsonDecode(response.body);
      for (var episode in episodes) {
        final epi = WebtoonEpisodeModel.fromJson(episode);
        episodeInstances.add(epi);
      }
      return episodeInstances;
    }
    throw Error();
  }
}
// 두가지 api서비스를 만들어주고 각각 모델도 만들어줌
```

### Futures

![image-20231206165749207](C:.\assets\image-20231206165749207.png)

- 기존 방법으로는 id가 필요해서 접근이 불가해서 안되고 다른방법 써야함

```dart
import 'package:flutter/material.dart';

import 'package:webtoonapp/models/webtoon_model.dart';

class DetailWebtoon extends StatefulWidget {
  // 1. StatefulWidget으로 바꾸면
  final WebtoonModel webtoon;

  const DetailWebtoon({
    super.key,
    required this.webtoon,
  });

  @override
  State<DetailWebtoon> createState() => _DetailWebtoonState();
}

class _DetailWebtoonState extends State<DetailWebtoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
          widget.webtoon.title,
          // 2. 이제 별개의 다른 클래스로 구분되어서 기존 webtoon.title에서 widget.webtoon.title로 바뀜
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: widget.webtoon.id,
                // 3. 여기도 마찬가지 widget이 붙음
                child: Container(
                  width: 250,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(7, 7),
                          color: Colors.black.withOpacity(0.5),
                        )
                      ]),
                  child: Image.network(
                    widget.webtoon.thumb,
                    headers: const {
                      "User-Agent":
                          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

```

```dart
class _DetailWebtoonState extends State<DetailWebtoon> {
  late Future<WebtoonDetailModel> webtoonDetail;
  late Future<List<WebtoonEpisodeModel>> webtoonEpisodes;
// 이렇게 구분된 클래스에서 초기화를 해준다
// late를 써서 우선 변수만 선언하고
  @override
  void initState() {
    super.initState();
    webtoonDetail = ApiService.getToonById(widget.webtoon.id);
    webtoonEpisodes = ApiService.getEpisodesById(widget.webtoon.id);
  // initState에서 할당해준다
  // widget을 통해 접근해야함 다른 클래스라서
  }
    
// @@ 홈스크린과는 다른 이유가 거기서는 따로 argument를 요구하지 않았기 때문에 그냥 쓸수있었지만 여기선 필요하므로
```

### Detail Info

```dart
import 'package:flutter/material.dart';
import 'package:webtoonapp/models/webtoon_detail_model.dart';
import 'package:webtoonapp/models/webtoon_episode_model.dart';

import 'package:webtoonapp/models/webtoon_model.dart';
import 'package:webtoonapp/services/api_service.dart';

class DetailWebtoon extends StatefulWidget {
  final WebtoonModel webtoon;

  const DetailWebtoon({
    super.key,
    required this.webtoon,
  });

  @override
  State<DetailWebtoon> createState() => _DetailWebtoonState();
}

class _DetailWebtoonState extends State<DetailWebtoon> {
  late Future<WebtoonDetailModel> webtoonDetail;
  late Future<List<WebtoonEpisodeModel>> webtoonEpisodes;

  @override
  void initState() {
    super.initState();
    webtoonDetail = ApiService.getToonById(widget.webtoon.id);
    webtoonEpisodes = ApiService.getEpisodesById(widget.webtoon.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
          widget.webtoon.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: widget.webtoon.id,
                child: Container(
                  width: 250,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(7, 7),
                          color: Colors.black.withOpacity(0.5),
                        )
                      ]),
                  child: Image.network(
                    widget.webtoon.thumb,
                    headers: const {
                      "User-Agent":
                          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          FutureBuilder(
            future: webtoonDetail,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snapshot.data!.about,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${snapshot.data!.genre} / ${snapshot.data!.age}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              }
              return const Center(
                heightFactor: 3,
                child: CircularProgressIndicator(),
                // 로딩할때 가운데 뜨는 프로그래스바
              );
            },
          )
        ],
      ),
    );
  }
}

```

```dart
FutureBuilder(
  future: webtoonDetail,
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              // 클릭하면 전체 설명볼수있고 다시 줄일수있는 설정 state로 관리해주었다
              onTap: onClick,
              child: Text(
                maxLines: isExpanded ? null : 7,
                overflow: isExpanded ? null : TextOverflow.ellipsis,
                snapshot.data!.about,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${snapshot.data!.genre} / ${snapshot.data!.age}",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
    }
    return const Center(
      heightFactor: 3,
      child: CircularProgressIndicator(),
      // 로딩할때 가운데 뜨는 프로그래스바
    );
  },
)
```

### Episodes

```dart
FutureBuilder(
future: webtoonEpisodes,
builder: (context, snapshot) {
  if (snapshot.hasData) {
    // ListView를 안쓰는 이유는 오히려 신경쓸게 많기도 하고 10개정도의 가벼운 작업은 그냥 column이 낫다
    // 최적화가 필요하거나 리스트가 길거나하면 리스트뷰가 필수
    return Column(
      children: [
        for (var episode in snapshot.data!)
          Container(
            margin: const EdgeInsets.only(bottom: 7),
            decoration: BoxDecoration(
                color: Colors.green.shade400,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    offset: const Offset(3, 3),
                    color: Colors.black.withOpacity(0.5),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 7),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    episode.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
  return Container();
},
),
```

### URL Launcher

- Flutter 개발자들이 만든 url Launcher 설치해야함
- AndroidManifest.xml 파일위치
  .\android\app\src\main

```dart
<data android:scheme="https" />
    이렇게 어떤 url종류인지 명시해준다
```

```dart
// episode widget
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webtoonapp/models/webtoon_episode_model.dart';

class Episode extends StatelessWidget {
  const Episode({
    super.key,
    required this.episode,
    required this.webtoonId,
  });

  final WebtoonEpisodeModel episode;
  final String webtoonId;

  void onButtonTap() async {
    await launchUrlString(
        "https://comic.naver.com/webtoon/detail?titleId=$webtoonId&no=${episode.id}");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 7),
        decoration: BoxDecoration(
            color: Colors.green.shade400,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(3, 3),
                color: Colors.black.withOpacity(0.5),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

```

### Favorite

- 좋아요 관련 데이터를 휴대폰에 저장
- Shared preference (flutter에서 만듬) 사용 https://pub.dev/packages/shared_preferences
- 설치하고 readme에서 사용법이 다 있음

![image-20231212144539455](C:.\assets\image-20231212144539455.png)

```dart
late SharedPreferences prefs;

Future initPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    super.initState();
    webtoonDetail = ApiService.getToonById(widget.webtoon.id);
    webtoonEpisodes = ApiService.getEpisodesById(widget.webtoon.id);
    initPref();
  }
// 이런식으로 폰에 저장소 만들어서 초기화해줌
```

```dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webtoonapp/models/webtoon_detail_model.dart';
import 'package:webtoonapp/models/webtoon_episode_model.dart';

import 'package:webtoonapp/models/webtoon_model.dart';
import 'package:webtoonapp/services/api_service.dart';
import 'package:webtoonapp/widgets/episode_widget.dart';

class DetailWebtoon extends StatefulWidget {
  final WebtoonModel webtoon;

  const DetailWebtoon({
    super.key,
    required this.webtoon,
  });

  @override
  State<DetailWebtoon> createState() => _DetailWebtoonState();
}

class _DetailWebtoonState extends State<DetailWebtoon> {
  late Future<WebtoonDetailModel> webtoonDetail;
  late Future<List<WebtoonEpisodeModel>> webtoonEpisodes;
  late SharedPreferences prefs;
  // 폰에 관리할 좋아요 목록
  bool isLiked = false;

  bool isExpanded = false;

  void onClick() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  Future initPref() async {
    prefs = await SharedPreferences.getInstance();
    final likedToons = prefs.getStringList('likedToons');
    if (likedToons != null) {
      if (likedToons.contains(widget.webtoon.id) == true) {
        setState(() {
          // UI를 refresh 해줘야함
          isLiked = true;
        });
      }
    } else {
      await prefs.setStringList("likedToons", []);
      // 사용자가 처음 앱 실행시 만들어줌
    }
  }

  onHeartTap() async {
    final likedToons = prefs.getStringList('likedToons');
    if (likedToons != null) {
      if (isLiked) {
        likedToons.remove(widget.webtoon.id);
      } else {
        likedToons.add(widget.webtoon.id);
      }
      await prefs.setStringList('likedToons', likedToons);
      // 수정된 리스트를 폰에 다시 저장
      setState(() {
        isLiked = !isLiked;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    webtoonDetail = ApiService.getToonById(widget.webtoon.id);
    webtoonEpisodes = ApiService.getEpisodesById(widget.webtoon.id);
    initPref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: onHeartTap,
            icon: isLiked
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_outline_outlined),
          ),
        ],
        title: Text(
          widget.webtoon.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 50,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.webtoon.id,
                    child: Container(
                      width: 250,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              offset: const Offset(7, 7),
                              color: Colors.black.withOpacity(0.5),
                            )
                          ]),
                      child: Image.network(
                        widget.webtoon.thumb,
                        headers: const {
                          "User-Agent":
                              "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              FutureBuilder(
                future: webtoonDetail,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: onClick,
                          child: Text(
                            maxLines: isExpanded ? null : 7,
                            overflow: isExpanded ? null : TextOverflow.ellipsis,
                            snapshot.data!.about,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "${snapshot.data!.genre} / ${snapshot.data!.age}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    );
                  }
                  return const Center(
                    heightFactor: 3,
                    child: CircularProgressIndicator(),
                    // 로딩할때 가운데 뜨는 프로그래스바
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              FutureBuilder(
                future: webtoonEpisodes,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    // ListView를 안쓰는 이유는 오히려 신경쓸게 많기도 하고 10개정도의 가벼운 작업은 그냥 column이 낫다
                    // 최적화가 필요하거나 리스트가 길거나하면 리스트뷰가 필수
                    return Column(
                      children: [
                        for (var episode in snapshot.data!)
                          Episode(
                            episode: episode,
                            webtoonId: widget.webtoon.id,
                          )
                      ],
                    );
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

## Build

```dart
apk 빌드 : 터미널에 flutter build apk --release --target-platform=android-arm64
참고링크 : https://gamestory2.tistory.com/215

끝난 기념으로 apk파일로 안드로이드폰에 설치해보았는데, 인터넷 권한 문제로 무한 로딩에 빠지는 현상을 보임.

<uses-permission android:name="android.permission.INTERNET" />
을 AndroidManifest.xml에 추가하면 해결됨
위치는 application 위쪽으로

참고링크 : https://happyguy81.tistory.com/151
```

