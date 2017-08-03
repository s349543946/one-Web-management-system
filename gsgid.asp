<!-- #include file="conn.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>成功</title>
</head>
<body>
<%
dsql1="select * from company_info "
set rs=server.createobject("adodb.recordset")
rs.open dsql1,conn,1,3
rs.addnew

rs.movefirst
  while not rs.Eof
mz1=rs(10)
mz2=rs(11)
set rsc1=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&mz1&"'"
rsc1.open sql,conn,1,1
rs(10)=rsc1("ID")
set rsc1=nothing

set rsc2=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&mz2&"'"
rsc2.open sql,conn,1,1
rs(11)=rsc2("ID")
set rsc1=nothing

rs.movenext  
wend

rs.update
set rs=nothing

dsql1="select * from shanghui "
set rs=server.createobject("adodb.recordset")
rs.open dsql1,conn,1,3
rs.addnew

rs.movefirst
  while not rs.Eof
mz1=rs(2)
mz2=rs(3)
mz3=rs(4)
mz4=rs(5)
mz5=rs(6)
mz6=rs(7)
if mz1<>"" then
set rsc1=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&mz1&"'"
rsc1.open sql,conn,1,1
rs(2)=rsc1("ID")
set rsc1=nothing
end if

if mz2<>"" then
set rsc2=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&mz2&"'"
rsc2.open sql,conn,1,1
rs(3)=rsc2("ID")
set rsc1=nothing
end if

if mz3<>"" then
set rsc2=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&mz3&"'"
rsc2.open sql,conn,1,1
rs(4)=rsc2("ID")
set rsc1=nothing
end if

if mz4<>"" then
set rsc2=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&mz4&"'"
rsc2.open sql,conn,1,1
rs(5)=rsc2("ID")
set rsc1=nothing
end if

if mz5<>"" then
set rsc2=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&mz5&"'"
rsc2.open sql,conn,1,1
rs(6)=rsc2("ID")
set rsc1=nothing
end if

if mz6<>"" then
set rsc2=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&mz6&"'"
rsc2.open sql,conn,1,1
rs(7)=rsc2("ID")
set rsc1=nothing
end if

rs.movenext  
wend

rs.update
set rs=nothing

%>
<center>
添加成功
</center>

</body>
</html>