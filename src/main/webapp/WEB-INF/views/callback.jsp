<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
   <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
   <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  </head>
  <body>
  <script type="text/javascript">
  var naver_id_login = new naver_id_login("nmuFIAlAX7Na0l6ahIGv", "http://localhost:8080/callback");
  // 접근 토큰 값 출력
  $('body').append('<h4>접속토큰:'+naver_id_login.oauthParams.access_token+'</h4>');
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
    const email = naver_id_login.getProfileData('email');
    const name = naver_id_login.getProfileData('name');
    const mobile = naver_id_login.getProfileData('mobile');
    
	let body = $('body');
	body.append('로그인 성공!');  
	body.append('<h4>이메일:'+email+'</h4>');  
	body.append('<h4>이름:'+name+'</h4>');
	body.append('<h4>전화번호:'+mobile+'</h4>');
  }
</script>
  </body>
</html>

