<!-- #include file="conn.asp" -->
<%
username = Request.Form("userName")
password =  Request.Form("password")
if username = "" or password = "" then
response.Write("用户名或密码不能为空")
response.Redirect("cwindex.asp")
response.End()
end if
'打开数据库判断用户是否存在,info为表名,username为字段名
set rsc=server.createobject("adodb.recordset")
sqlc="select * from info where username='"&request.Form("username")&"' and password='"&request.Form("password")&"'"
rsc.open sqlc,conn,1,1
if rsc.eof then
Response.Write("用户名或密码错误")
response.Redirect("cwindex.asp")
Response.End()
else
session("uName")=rsc("username")
Response.Cookies("firstname")=username
session("uID")=rsc("password")
end if

response.Redirect("dlindex.asp")
'如果用户不存在,session("username")为空
%>