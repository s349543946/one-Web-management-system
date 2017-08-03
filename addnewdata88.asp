
<!-- #include file="conn.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>成功</title>
</head>
<body>
<%

set rsc88=server.createobject("adodb.recordset")
dsql="select * from 写表 order by ID"
rsc88.open dsql,conn,1,3
rsc88.addnew
rsc88.movefirst
  while not rsc88.Eof
set rsc1=server.createobject("adodb.recordset")
sql1="select * from 查表 where 人id = '"&rsc88(1)&"'"
rsc1.open sql1,conn,1,1
zjg=rsc1("籍贯")
set rsc1=nothing
rsc88(3)=zjg
set rsc2=server.createobject("adodb.recordset")
sql2="select * from 查表 where 人id = '"&rsc88(2)&"'"
rsc2.open sql2,conn,1,1
fjg=rsc2("籍贯")
set rsc2=nothing
rsc88(4)=fjg
fjg=""
rsc88.movenext  
wend
rsc88.update
set rsc88=nothing


%>
<center>
<a href="index.asp" target="_self">注册成功,点击登陆</a>
</center>
<%

%>
</body>
</html>