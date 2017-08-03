<!-- #include file="conn.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>成功</title>
</head>
<body>
<%
ac=request.QueryString("ac")
msg="注册错误信息："
if request.Form("姓名")="" then
msg=msg&"<br>"&"*姓名不能为空"
end if
if request.Form("性别")="" then
msg=msg&"<br>"&"*性别不能为空"
end if
if strcomp(msg,"注册错误信息：")>0 then
response.Redirect("tjws.asp?msg=" & msg)
end if
if ac="adduser" then
set rsc=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&request.Form("姓名")&"'"
rsc.open sql,conn,1,1
ck=rsc("姓名")
set rsc=nothing
if ck="" then
dsql="select * from wenshangxinxi where  id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("姓名")=request.Form("姓名")
rs("性别")=request.Form("性别")
rs("手机")=request.Form("手机")
rs("工作单位")=request.Form("工作单位")
rs("工作职务")=request.Form("工作职务")
rs("所属商会")=request.Form("所属商会")
rs("商会职务")=request.Form("商会职务")
rs("籍贯")=request.Form("籍贯")
rs("身份证")=request.Form("身份证")
rs("所在区域")=request.Form("所在区域")
rs("邮编")=request.Form("邮编")
rs("联系地址")=request.Form("联系地址")
rs.update
set rs=nothing
end if

if ck<>"" then
dsql="select * from wenshangxinxi where 姓名='"&request.Form("姓名")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3

rs("姓名")=request.Form("姓名")
rs("性别")=request.Form("性别")
rs("手机")=request.Form("手机")
rs("工作单位")=request.Form("工作单位")
rs("工作职务")=request.Form("工作职务")
rs("所属商会")=request.Form("所属商会")
rs("商会职务")=request.Form("商会职务")
rs("籍贯")=request.Form("籍贯")
rs("身份证")=request.Form("身份证")
rs("所在区域")=request.Form("所在区域")
rs("邮编")=request.Form("邮编")
rs("联系地址")=request.Form("联系地址")
rs.update
set rs=nothing
end if

%>
<center>
<a href="dlindex.asp" target="_self">添加成功,点击返回</a>
</center>
<%
end if
%>
</body>
</html>