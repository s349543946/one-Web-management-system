<!-- #include file="conn.asp" -->
<%
username = Request.Form("userName")
password =  Request.Form("password")
if username = "" or password = "" then
response.Write("�û��������벻��Ϊ��")
response.Redirect("cwindex.asp")
response.End()
end if
'�����ݿ��ж��û��Ƿ����,infoΪ����,usernameΪ�ֶ���
set rsc=server.createobject("adodb.recordset")
sqlc="select * from info where username='"&request.Form("username")&"' and password='"&request.Form("password")&"'"
rsc.open sqlc,conn,1,1
if rsc.eof then
Response.Write("�û������������")
response.Redirect("cwindex.asp")
Response.End()
else
session("uName")=rsc("username")
Response.Cookies("firstname")=username
session("uID")=rsc("password")
end if

response.Redirect("dlindex.asp")
'����û�������,session("username")Ϊ��
%>