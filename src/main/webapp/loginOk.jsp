<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<%
		String memberid = request.getParameter("id");
		String memberpw = request.getParameter("pw");
		String hobby = request.getParameter("hobby");
		String gender = request.getParameter("gender");
		String intro = request.getParameter("intro");
		String[] subject = request.getParameterValues("subject");
		// formTest.jsp에서 넘겨준 파라미터 값(id,pw)을 가져옴)
		//System.out.println(memberid);
		//System.out.println(memberpw);
	
	%>
	 로그인 하신 ID는 <%= memberid %> 입니다.<br>
	 입력하신 비밀번호는 <%= memberpw %> 입니다.<br>
	 취미: <%= hobby %><br>
	 성별: <%= gender %><br>
	 자기소개: <%= intro %><br>
	 좋아하는 과목:<br>
	 <%
	 	if(subject != null){
	 	for(int i=0;i<subject.length;i++)
	 	{
	 		out.println(subject[i]);
	 		}
	 	} else {
	 		out.println("좋아하는 과목 없음");
	 	}
	 	
	 	
	 %>
</body>
</html>