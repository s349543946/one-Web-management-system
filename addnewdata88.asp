
<!-- #include file="conn.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ɹ�</title>
</head>
<body>
<%

set rsc88=server.createobject("adodb.recordset")
dsql="select * from д�� order by ID"
rsc88.open dsql,conn,1,3
rsc88.addnew
rsc88.movefirst
  while not rsc88.Eof
set rsc1=server.createobject("adodb.recordset")
sql1="select * from ��� where ��id = '"&rsc88(1)&"'"
rsc1.open sql1,conn,1,1
zjg=rsc1("����")
set rsc1=nothing
rsc88(3)=zjg
set rsc2=server.createobject("adodb.recordset")
sql2="select * from ��� where ��id = '"&rsc88(2)&"'"
rsc2.open sql2,conn,1,1
fjg=rsc2("����")
set rsc2=nothing
rsc88(4)=fjg
fjg=""
rsc88.movenext  
wend
rsc88.update
set rsc88=nothing


%>
<center>
<a href="index.asp" target="_self">ע��ɹ�,�����½</a>
</center>
<%

%>
</body>
</html>