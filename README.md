과제 4

1. JWT
   : JWT란 JSON WEB TOKEN을 줄인 말이다.
   보통, 인증에 필요한 정보들을 담고 있는 경우가 많다.
   AAAA.BBBB.CCCC 처럼 세 부분으로 나뉘어 있다.
   A : HEADER이다. alg와 typ에 대한 정보를 담고 있다.
   alg : Signature에서 사용하는 알고리즘의 정보
   typ : 토큰의 type
   B : PAYLOAD이다. 사용자의 정보를 담고 있는 여러 CLAIM이 들어있다.
   PUBLIC CLAIM(Registered Claim Names로 이루어짐), PRIVATE CLAIM의 종류로 나뉜다.
   PUBLIC CLAIM은 다른 시스템에서도 쓸 수 있도록 미리 정해진 이름(Registered Claim Names)을 쓴다.
   대조적으로, PRIVATE CLAIM은 사용자 만든 BE나 FE 끼리 임의로 만든 이름을 쓰기에 다른 시스템(ex. 다른 사람이 만든 FE나 BE)에서는 사용할 수 없다.
   C : SIGNATURE이다. A와 B의 문자열을 합친 후에 A에서 선언한 알고리즘과 KEY를 활용하여 암호화한 값이다.
   A와 B는 단순히 Base64url로 인코딩되어 있기 때문에 쉽게 복호화 가능하다.
   그러나, C는 KEY가 없으면 복호화할 수 없다. 따라서 보안상 안전하다는 특징이 있다.
2. DIO INTERCEPTOR
   : DIO INTERCEPTOR는 DIO의 작동 과정 사이에 (흐름을 가져와) 로직이나 특정 기능을 처리하는 역할을 한다.
   DIO INTERCEPTOR는 세 부분의 작동 과정에서 흐름을 가져올 수 있다.
   onRequest : DIO에서 API에 요청을 보내기 전에 로직이나 특정 기능을 처리한다.
   onResponse : DIO에서 API로부터 응답을 받은 후 로직이나 특정 기능을 처리한다.
   onError : DIO에서 요청 중 오류가 발생했을 때 로직이나 특정 기능을 처리한다.
3. 상태 유지 로직
   : AUTH 상태와 관련한 TOKEN으로는 ACCESS TOKEN과 REFRESH TOKEN이 있다.
   ACCESS TOKEN : API에 접근할 때 활용되는 TOKEN이다. 이 TOKEN이 있어야 접근 가능한 API 엔드포인트가 존재한다. 만료 기간이 존재한다 (짧다).
   REFRESH TOKEN : ACCESS TOKEN이 만료되어 더 이상 사용할 수 없게 되었을 때, API로부터 새로운 ACCESS TOKEN을 가져오기 위해 사용되는 TOKEN이다. 이 TOKEN 또한 만료 기간이 존재한다 (ACCESS TOKEN에 비해 상대적으로 길다).
   이처럼, 상태 유지 로직에서는 ACCESS TOKEN과 REFRESH TOKEN이 중요하다.
   상태 유지 로직 흐름도
   1. 로그인
   - 처음에 사용자가 로그인을 하면 서버로부터 ACCESS TOKEN과 REFRESH TOKEN을 서버로부터 받는다.
   2. ACCESS TOKEN이 기간 만료된 경우
   - DIO INTERCEPTOR에서 onError(401 Error)가 발생했을 경우 REFRESH TOKEN을 활용하여 새로운 ACCESS TOKEN을 서버로부터 받는다. 만약, REFRESH TOKEN도 만료되었다면 로그인 페이지로 이동하여 1번 과정을 다시 수행해야한다.
   - ACCESS TOKEN이 만료되었으나 DIO INTERCEPTOR에서 onError가 발생하지 않은 경우라면 ACCESS TOKEN이 딱히 필요하지 않은 경우이므로 당장은 REFRESH TOKEN을 활용하여 새로운 ACCESS TOKEN을 가져올 필요가 없다.
   3. REFRESH TOKEN이 기간 만료된 경우 - REFRESH TOKEN이 만료되었다면 로그인 페이지로 이동하여 1번 과정을 다시 수행한다.

과제 5

1. 새롭게 만든 파일에 대한 설명
   1. post_repository와 rest_post_repository / auth_repository와 rest_auth_repository
      - 기존에는 data layer에 존재하는 repository와 presentation layer에 존재하는 page 및 bloc이
        서로 직접 의존하고, 사용했다. 하지만, 이는 clean architecture에 위반되었다. 따라서,
        domain layer에 abstract class로 xxxx_repository를 만들어, 메소드를 선언만 한다.
        그 후, data layer에서 rest_xxxx_repository를 만들고, @injectable(as:xxxxRepository)와 implement 문법을 사용하여 해당 추상 클래스를 직접 구현하는 하였다.
   2. locator.dart
      - DI 컨테이너 시작 설정
   3. module.dart
      - 외부에서 가져온 객체(FlutterSecureStorage) 혹은 설정이 필요한 객체(Dio)를 @module annotation과 @lazySingleton, @Singleton을 활용하여 DI 컨테이너에 등록함.
   4. @injectable 적용
      - api : api를 injectable로 저장해야 했다. 그러나, api는 abstract class이므로 @injectable annotation이 build하지 못할 가능성이 있다. 따라서, @factoryMethod를 사용하여 @injectable annotation에게 build 방법을 알려주어 해결함.
      - tokenStorage : @Singleton을 활용하여 앱 전체에서 tokenStorage 인스턴스를 오직 하나만 사용하도록 구성함과 동시에 DI 컨테이너에 등록함.
      - rest_xxxx_repository : @injectable(as:xxxxRepository)를 활용하여 DI 컨테이너에 xxxxRepository가 필요하다면 대신 rest_xxxx_repository를 만들어서 제공하도록 등록함.
      - bloc : presentation/view의 page에서 Bloc을 활용할 때, DI 컨테이너에서 bloc이 구성될 때 필요한 객체들을 자동 구성하도록 하기 위해 @injectable annotation을 활용하여 등록함.
2. clean architecture 설명
   1. 기능 별로 layer 분리
      - 유지 보수에 도움됨
      - 의존성 규칙을 따르도록 설정 가능
      - 의존성 규칙을 따른다면, 데이터베이스를 변경하거나 UI를 변경하더라도 앱의 핵심 로직인 Domain layer에는 영향 끼치지 못함.
   2. 의존성 주입 (DI)
      - 객체들을 DI 컨테이너에서 관리하며, 필요하다면 DI에서 자동 구성하여 객체를 제공하기 때문에 유지 보수 및 기능 구현에 도움된다.
