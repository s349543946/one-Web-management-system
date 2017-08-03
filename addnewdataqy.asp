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
if request.Form("公司名称")="" then
msg=msg&"<br>"&"*公司名称不能为空"
end if
if request.Form("序号")="" then
msg=msg&"<br>"&"*序号不能为空"
end if
if request.Form("公司地址")="" then
msg=msg&"<br>"&"*公司地址不能为空"
end if
if request.Form("主负责人")="" then
msg=msg&"<br>"&"*主负责人不能为空"
end if
if strcomp(msg,"注册错误信息：")>0 then
response.Redirect("tjqy.asp?msg=" & msg)
end if
if ac="adduser" then
set rsc=server.createobject("adodb.recordset")
sql="select * from gongsixinxi where 公司名称='"&request.Form("公司名称")&"'"
rsc.open sql,conn,1,1
ck=rsc("公司名称")
set rsc=nothing
set rsc1=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&request.Form("主负责人")&"'"
rsc1.open sql,conn,1,1
zfzr=rsc1("姓名")
set rsc1=nothing
set rsc2=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&request.Form("副负责人")&"'"
rsc2.open sql,conn,1,1
ffzr=rsc2("姓名")
set rsc2=nothing
if ck<>"" then
msg=msg&"<br>"&"公司信息已存在"
response.Redirect("tjqy.asp?msg="&msg)
end if
dsql="select * from gongsixinxi where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("公司名称")=request.Form("公司名称")
rs("序号")=request.Form("序号")
rs("公司地址")=request.Form("公司地址")
rs("标志")=request.Form("标志")
rs("占地面积")=request.Form("占地面积")
rs("总投资")=request.Form("总投资")
rs("主要营态")=request.Form("主要营态")
rs("市场总数")=request.Form("市场总数")
rs("登记时间")=request.Form("登记时间")
rs("主负责人")=request.Form("主负责人")
rs("主负责人电话")=request.Form("主负责人电话")
rs("主负责人商会职务")=request.Form("主负责人商会职务")
rs("主负责人籍贯")=request.Form("主负责人籍贯")
rs("副负责人")=request.Form("副负责人")
rs("副负责人电话")=request.Form("副负责人电话")
rs("副负责人商会职务")=request.Form("副负责人商会职务")
rs("副负责人籍贯")=request.Form("副负责人籍贯")
rs.update
set rs=nothing
if zfzr=""then
dsql="select * from wenshangxinxi where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("姓名")=request.Form("主负责人")
rs("手机")=request.Form("主负责人电话")
rs("商会职务")=request.Form("主负责人商会职务")
rs("籍贯")=request.Form("主负责人籍贯")
rs("工作单位")=request.Form("公司名称")
rs.update
set rs=nothing
end if
if ffzr="" then
dsql="select * from wenshangxinxi where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
if request.Form("副负责人")<>"" then
rs.addnew
rs("姓名")=request.Form("副负责人")
rs("手机")=request.Form("副负责人电话")
rs("商会职务")=request.Form("副负责人商会职务")
rs("籍贯")=request.Form("副负责人籍贯")
rs("工作单位")=request.Form("公司名称")
rs.update
end if
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