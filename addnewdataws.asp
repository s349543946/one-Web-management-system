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
if request.Form("����")="" then
msg=msg&"<br>"&"*��������Ϊ��"
end if
if request.Form("�Ա�")="" then
msg=msg&"<br>"&"*�Ա���Ϊ��"
end if
if strcomp(msg,"ע�������Ϣ��")>0 then
response.Redirect("tjws.asp?msg=" & msg)
end if
if ac="adduser" then
set rsc=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where ����='"&request.Form("����")&"'"
rsc.open sql,conn,1,1
ck=rsc("����")
set rsc=nothing
if ck="" then
dsql="select * from wenshangxinxi where  id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("����")=request.Form("����")
rs("�Ա�")=request.Form("�Ա�")
rs("�ֻ�")=request.Form("�ֻ�")
rs("������λ")=request.Form("������λ")
rs("����ְ��")=request.Form("����ְ��")
rs("�����̻�")=request.Form("�����̻�")
rs("�̻�ְ��")=request.Form("�̻�ְ��")
rs("����")=request.Form("����")
rs("���֤")=request.Form("���֤")
rs("��������")=request.Form("��������")
rs("�ʱ�")=request.Form("�ʱ�")
rs("��ϵ��ַ")=request.Form("��ϵ��ַ")
rs.update
set rs=nothing
end if

if ck<>"" then
dsql="select * from wenshangxinxi where ����='"&request.Form("����")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3

rs("����")=request.Form("����")
rs("�Ա�")=request.Form("�Ա�")
rs("�ֻ�")=request.Form("�ֻ�")
rs("������λ")=request.Form("������λ")
rs("����ְ��")=request.Form("����ְ��")
rs("�����̻�")=request.Form("�����̻�")
rs("�̻�ְ��")=request.Form("�̻�ְ��")
rs("����")=request.Form("����")
rs("���֤")=request.Form("���֤")
rs("��������")=request.Form("��������")
rs("�ʱ�")=request.Form("�ʱ�")
rs("��ϵ��ַ")=request.Form("��ϵ��ַ")
rs.update
set rs=nothing
end if

%>
<center>
<a href="dlindex.asp" target="_self">��ӳɹ�,�������</a>
</center>
<%
end if
%>
</body>
</html>