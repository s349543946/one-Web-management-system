<!-- #include file="conn.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ɹ�</title>
</head>
<body>
<%
ac=request.QueryString("ac")
msg="ע�������Ϣ��"
if request.Form("�̻�����")="" then
msg=msg&"<br>"&"*�̻����Ʋ���Ϊ��"
end if

if strcomp(msg,"ע�������Ϣ��")>0 then
response.Redirect("reg.asp?msg=" & msg)
end if

if ac="adduser" then


set rsc=server.createobject("adodb.recordset")
sql="select * from shanghui where �̻�='"&request.Form("�̻�����")&"'"
rsc.open sql,conn,1,1
ck=rsc("�̻�")
set rsc=nothing



dsql2="select * from shanghui where �̻� ='"&request.Form("�̻�����")&"' "
set rsc2=server.createobject("adodb.recordset")
rsc2.open dsql2,conn,1,1
hz1=rsc2("�᳤")
cwfhz1=rsc2("���񸱻᳤")
msz1=rsc2("���鳤")
fmsz1=rsc2("�����鳤")

dsql="select * from wenshangxinxi where �����̻� like'%"&request.Form("�̻�����")&"%' "
set rsc1=server.createobject("adodb.recordset")
rsc1.open dsql,conn,1,3

rsc1.movefirst
 while not rsc1.Eof
str=rsc1("�����̻�")
th=request.Form("id")
str=replace(str,th,"")
rsc1("�����̻�")=str


mz=rsc1("id")
if mz=hz1 then
str1=rsc1("�̻�ְ��")
th1=request.Form("id")+"�᳤"
str1=replace(str1,th1,"")
rsc1("�̻�ְ��")=str1

elseif mz=cwfhz1 then
str1=rsc1("�̻�ְ��")
th1=request.Form("id")+"���񸱻᳤"
str1=replace(str1,th1,"")
rsc1("�̻�ְ��")=str1

elseif mz=msz1 then
str1=rsc1("�̻�ְ��")
th1=request.Form("id")+"���鳤"
str1=replace(str1,th1,"")
rsc1("�̻�ְ��")=str1

elseif mz=fmsz1 then
str1=rsc1("�̻�ְ��")
th1=request.Form("id")+"�����鳤"
str1=replace(str1,th1,"")
rsc1("�̻�ְ��")=str1


end if
rsc1.update
rsc1.movenext  
wend
set rsc1=nothing


hm=request.Form("�̻�����")
hz=request.Form("�᳤")
cwfhz=request.Form("���񸱻᳤")
msz=request.Form("���鳤")
fmsz=request.Form("�����鳤")



if hz<>"" then
sql="select * from wenshangxinxi where ����='"&hz&"'"
set rs1=server.createobject("adodb.recordset")
rs1.open sql,conn,1,1
xm=rs1("����")
sh=rs1("�����̻�")
set rs1=nothing

if xm<>"" then
dsql1="select * from wenshangxinxi where ����='"&hz&"'"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3

if sh="" then
rs2("�����̻�")=hm
rs2("�̻�ְ��")=hm+"�᳤"
else 
rs2("�����̻�")=rs2("�����̻�")+"��"+hm
rs2("�̻�ְ��")=rs2("�̻�ְ��")+"��"+hm+"�᳤"
end if
hzid=rs2("ID")
rs2.update
set rs2=nothing
else

dsql1="select * from wenshangxinxi where ID is null"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3
rs2.addnew
rs2("����")=hz
rs2("�����̻�")=hm
rs2("�̻�ְ��")=hm+"�᳤"
hzid=rs2("ID")
rs2.update
set rs2=nothing
end if


end if





if cwfhz<>"" then
sql="select * from wenshangxinxi where ����='"&cwfhz&"'"
set rs21=server.createobject("adodb.recordset")
rs21.open sql,conn,1,1
xm=rs21("����")
sh=rs21("�����̻�")
set rs21=nothing

if xm<>"" then
dsql1="select * from wenshangxinxi where ����='"&cwfhz&"'"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3

if sh="" then
rs2("�����̻�")=cwfhz
rs2("�̻�ְ��")=hm+"���񸱻᳤"
else 
rs2("�����̻�")=rs2("�����̻�")+"��"+hm
rs2("�̻�ְ��")=rs2("�̻�ְ��")+"��"+hm+"���񸱻᳤"
end if
cwfhzid=rs2("ID")
rs2.update
set rs2=nothing
else
dsql1="select * from wenshangxinxi where ID is null"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3
rs2.addnew
rs2("����")=xm
rs2("�����̻�")=hm
rs2("�̻�ְ��")=hm+"���񸱻᳤"
cwfhzid=rs2("ID")
rs2.update
set rs2=nothing
end if
end if

if msz<>"" then
sql="select * from wenshangxinxi where ����='"&msz&"'"
set rs21=server.createobject("adodb.recordset")
rs21.open sql,conn,1,1
xm=rs21("����")
sh=rs21("�����̻�")
set rs21=nothing

if xm<>"" then
dsql1="select * from wenshangxinxi where ����='"&msz&"'"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3

if sh="" then
rs2("�����̻�")=hm
rs2("�̻�ְ��")=hm+"���鳤"

else 
rs2("�����̻�")=rs2("�����̻�")+"��"+hm
rs2("�̻�ְ��")=rs2("�̻�ְ��")+"��"+hm+"���鳤"
end if
mszid=rs2("ID")
rs2.update
set rs2=nothing
else
dsql1="select * from wenshangxinxi where ID is null"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3
rs2.addnew
rs2("����")=msz
rs2("�����̻�")=hm
rs2("�̻�ְ��")=hm+"���鳤"
mszid=rs2("ID")
rs2.update
set rs2=nothing
end if
end if

if fmsz<>"" then
sql="select * from wenshangxinxi where ����='"&fmsz&"'"
set rs21=server.createobject("adodb.recordset")
rs21.open sql,conn,1,1
xm=rs21("����")
sh=rs21("�����̻�")
set rs21=nothing

if xm<>"" then
dsql1="select * from wenshangxinxi where ����='"&fmsz&"'"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3

if sh="" then
rs2("�����̻�")=hm
rs2("�̻�ְ��")=hm+"�����鳤"
else 
rs2("�����̻�")=rs2("�����̻�")+"��"+hm
rs2("�̻�ְ��")=rs2("�̻�ְ��")+"��"+hm+"�����鳤"
end if
fmszid=rs2("ID")
rs2.update
set rs2=nothing
else
dsql1="select * from wenshangxinxi where ID is null"
set rs2=server.createobject("adodb.recordset")
rs2.open dsql1,conn,1,3
rs2.addnew
rs2("����")=fmsz
rs2("�����̻�")=hm
rs2("�̻�ְ��")=hm+"�����鳤"
fmszid=rs2("ID")
rs2.update
set rs2=nothing
end if
end if

dsql="select * from shanghui where �̻�='"&request.Form("�̻�����")&"' "
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("�̻�")=request.Form("�̻�����")
rs("�᳤")=hzid
rs("�᳤�绰")=request.Form("�᳤�绰")
rs("���񸱻᳤")=cwfhzid
rs("���񸱻᳤�绰")=request.Form("���񸱻᳤�绰")
rs("���鳤")=mszid
rs("���鳤�绰")=request.Form("���鳤�绰")
rs("�����鳤")=fmszid
rs("�����鳤�绰")=request.Form("�����鳤�绰")
rs("�Ƿ��е���")=request.Form("�Ƿ��е���")
rs("�̻��ַ")=request.Form("�̻��ַ")
rs.update
set rs=nothing



%>
<center>
�޸ĳɹ�
</center>
<%
end if
%>
</body>
</html>