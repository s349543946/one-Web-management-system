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


if ck<>"" then
msg=msg&"<br>"&"�̻�������ע��"
response.Redirect("reg.asp?msg="&msg)
end if
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

dsql="select * from shanghui where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
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
��ӳɹ�
</center>
<%
end if
%>
</body>
</html>