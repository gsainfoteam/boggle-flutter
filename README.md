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
