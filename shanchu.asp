<!-- #include file="conn.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ɹ�</title>
</head>
<body>
<%
dsql1="select * from company_info where �����̻� ='"&request.Form("id")&"' "
set rsc=server.createobject("adodb.recordset")
rsc.open dsql1,conn,1,3

rsc.movefirst
  while not rsc.Eof
rsc("�����̻�")=""
rsc.update
rsc.movenext  
wend
set rsc=nothing

dsql2="select * from shanghui where �̻� ='"&request.Form("id")&"' "
set rsc2=server.createobject("adodb.recordset")
rsc2.open dsql2,conn,1,1
hz=rsc2("�᳤")
cwfhz=rsc2("���񸱻᳤")
msz=rsc2("���鳤")
fmsz=rsc2("�����鳤")



dsql="select * from wenshangxinxi where �����̻� like'%"&request.Form("id")&"%' "
set rsc1=server.createobject("adodb.recordset")
rsc1.open dsql,conn,1,3

rsc1.movefirst
 while not rsc1.Eof
str=rsc1("�����̻�")
th=request.Form("id")
str=replace(str,th,"")
rsc1("�����̻�")=str

mz=rsc1("ID")
if mz=hz then
str1=rsc1("�̻�ְ��")
th1=request.Form("id")+"�᳤"
str1=replace(str1,th1,"")
rsc1("�̻�ְ��")=str1


elseif mz=cwfhz then
str1=rsc1("�̻�ְ��")
th1=request.Form("id")+"���񸱻᳤"
str1=replace(str1,th1,"")
rsc1("�̻�ְ��")=str1

elseif mz=msz then
str1=rsc1("�̻�ְ��")
th1=request.Form("id")+"���鳤"
str1=replace(str1,th1,"")
rsc1("�̻�ְ��")=str1

elseif mz=fmsz then
str1=rsc1("�̻�ְ��")
th1=request.Form("id")+"�����鳤"
str1=replace(str1,th1,"")
rsc1("�̻�ְ��")=str1

else 
str1=rsc1("�̻�ְ��")
th1=request.Form("id")+"��Ա"
str1=replace(str1,th1,"")
rsc1("�̻�ְ��")=str1
end if
rsc1.update
rsc1.movenext  
wend
set rsc1=nothing


exec="delete * from shanghui where �̻�='"&request.form("id")&"'"
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn 
%>
<center>
ɾ���ɹ�
</center>

</body>
</html>