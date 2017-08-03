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
if request.Form("商会名称")="" then
msg=msg&"<br>"&"*商会名称不能为空"
end if

if strcomp(msg,"注册错误信息：")>0 then
response.Redirect("reg.asp?msg=" & msg)
end if

if ac="adduser" then

set rsc=server.createobject("adodb.recordset")
sql="select * from shanghui where 商会='"&request.Form("商会名称")&"'"
rsc.open sql,conn,1,1
ck=rsc("商会")
set rsc=nothing


if ck<>"" then
msg=msg&"<br>"&"商会名被人注册"
response.Redirect("reg.asp?msg="&msg)
end if
hm=request.Form("商会名称")
hz=request.Form("会长")
cwfhz=request.Form("常务副会长")
msz=request.Form("秘书长")
fmsz=request.Form("副秘书长")



if hz<>"" then
sql="select * from wenshangxinxi where 姓名='"&hz&"'"
set rs1=server.createobject("adodb.recordset")
rs1.open sql,conn,1,1
xm=rs1("姓名")
sh=rs1("所属商会")
set rs1=nothing

if xm<>"" then
dsql1="select * from wenshangxinxi where 姓名='"&hz&"'"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3

if sh="" then
rs2("所属商会")=hm
rs2("商会职务")=hm+"会长"
else 
rs2("所属商会")=rs2("所属商会")+"、"+hm
rs2("商会职务")=rs2("商会职务")+"、"+hm+"会长"
end if
hzid=rs2("ID")
rs2.update
set rs2=nothing
else

dsql1="select * from wenshangxinxi where ID is null"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3
rs2.addnew
rs2("姓名")=hz
rs2("所属商会")=hm
rs2("商会职务")=hm+"会长"
hzid=rs2("ID")
rs2.update
set rs2=nothing
end if


end if






if cwfhz<>"" then
sql="select * from wenshangxinxi where 姓名='"&cwfhz&"'"
set rs21=server.createobject("adodb.recordset")
rs21.open sql,conn,1,1
xm=rs21("姓名")
sh=rs21("所属商会")
set rs21=nothing

if xm<>"" then
dsql1="select * from wenshangxinxi where 姓名='"&cwfhz&"'"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3

if sh="" then
rs2("所属商会")=cwfhz
rs2("商会职务")=hm+"常务副会长"
else 
rs2("所属商会")=rs2("所属商会")+"、"+hm
rs2("商会职务")=rs2("商会职务")+"、"+hm+"常务副会长"
end if
cwfhzid=rs2("ID")
rs2.update
set rs2=nothing
else
dsql1="select * from wenshangxinxi where ID is null"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3
rs2.addnew
rs2("姓名")=xm
rs2("所属商会")=hm
rs2("商会职务")=hm+"常务副会长"
cwfhzid=rs2("ID")
rs2.update
set rs2=nothing
end if
end if

if msz<>"" then
sql="select * from wenshangxinxi where 姓名='"&msz&"'"
set rs21=server.createobject("adodb.recordset")
rs21.open sql,conn,1,1
xm=rs21("姓名")
sh=rs21("所属商会")
set rs21=nothing

if xm<>"" then
dsql1="select * from wenshangxinxi where 姓名='"&msz&"'"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3

if sh="" then
rs2("所属商会")=hm
rs2("商会职务")=hm+"秘书长"
else 
rs2("所属商会")=rs2("所属商会")+"、"+hm
rs2("商会职务")=rs2("商会职务")+"、"+hm+"秘书长"
end if
mszid=rs2("ID")
rs2.update
set rs2=nothing
else
dsql1="select * from wenshangxinxi where ID is null"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3
rs2.addnew
rs2("姓名")=msz
rs2("所属商会")=hm
rs2("商会职务")=hm+"秘书长"
mszid=rs2("ID")
rs2.update
set rs2=nothing
end if
end if

if fmsz<>"" then
sql="select * from wenshangxinxi where 姓名='"&fmsz&"'"
set rs21=server.createobject("adodb.recordset")
rs21.open sql,conn,1,1
xm=rs21("姓名")
sh=rs21("所属商会")
set rs21=nothing

if xm<>"" then
dsql1="select * from wenshangxinxi where 姓名='"&fmsz&"'"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3

if sh="" then
rs2("所属商会")=hm
rs2("商会职务")=hm+"副秘书长"
else 
rs2("所属商会")=rs2("所属商会")+"、"+hm
rs2("商会职务")=rs2("商会职务")+"、"+hm+"副秘书长"
end if
fmszid=rs2("ID")
rs2.update
set rs2=nothing
else
dsql1="select * from wenshangxinxi where ID is null"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3
rs2.addnew
rs2("姓名")=fmsz
rs2("所属商会")=hm
rs2("商会职务")=hm+"副秘书长"
fmszid=rs2("ID")
rs2.update
set rs2=nothing
end if
end if

dsql="select * from shanghui where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("商会")=request.Form("商会名称")
rs("会长")=hzid
rs("会长电话")=request.Form("会长电话")
rs("常务副会长")=cwfhzid
rs("常务副会长电话")=request.Form("常务副会长电话")
rs("秘书长")=mszid
rs("秘书长电话")=request.Form("秘书长电话")
rs("副秘书长")=fmszid
rs("副秘书长电话")=request.Form("副秘书长电话")
rs("是否有党组")=request.Form("是否有党组")
rs("商会地址")=request.Form("商会地址")
rs.update
set rs=nothing


%>
<center>
添加成功
</center>
<%
end if
%>
</body>
</html>