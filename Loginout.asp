<!--#include file="../xyconn.asp" -->  
<%
session.Abandon()
Response.Write("<script language=""JavaScript"">alert(""��ϲ�㣬���Ѱ�ȫ�˳���վ����ϵͳ��"");</script>")
response.write "<Meta http-equiv='refresh' content='0;URL=index.asp'>"
%>