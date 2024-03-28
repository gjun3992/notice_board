<%@ page import="mdel1.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "lsLoggedin.jsp"%>
<%
String num = request.getParameter("num");
BoardDTO dto= new BoardDTO();
BoardDAO dao= new BoardDAO(application);

dto=dao.selectView(num);

String sessionId =session.getAttribute("UserId").toString();
int delResult=0;

if (sessionId.equals(dto.getId())){
	dto.setNum(num);
	delResult= dao.deletePost(dto);
	dao.close();
	
	if (delResult==1){
		JSFunction.alertLocation("삭제 되었습니다","list.jsp", out);
	}else{
		JSFunction.alertBack("삭제에 실패했습니다.",out);
	}
}
else{
	JSFunction.alertBack("본인만 삭제가 가능합니다.", out);
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>