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
if request.Form("��˾����")="" then
msg=msg&"<br>"&"*��˾���Ʋ���Ϊ��"
end if
if request.Form("���")="" then
msg=msg&"<br>"&"*��Ų���Ϊ��"
end if
if request.Form("��˾��ַ")="" then
msg=msg&"<br>"&"*��˾��ַ����Ϊ��"
end if
if request.Form("��������")="" then
msg=msg&"<br>"&"*�������˲���Ϊ��"
end if
if strcomp(msg,"ע�������Ϣ��")>0 then
response.Redirect("tjqy.asp?msg=" & msg)
end if
if ac="adduser" then
set rsc=server.createobject("adodb.recordset")
sql="select * from gongsixinxi where ��˾����='"&request.Form("��˾����")&"'"
rsc.open sql,conn,1,1
ck=rsc("��˾����")
set rsc=nothing
set rsc1=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where ����='"&request.Form("��������")&"'"
rsc1.open sql,conn,1,1
zfzr=rsc1("����")
set rsc1=nothing
set rsc2=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where ����='"&request.Form("��������")&"'"
rsc2.open sql,conn,1,1
ffzr=rsc2("����")
set rsc2=nothing
if ck<>"" then
msg=msg&"<br>"&"��˾��Ϣ�Ѵ���"
response.Redirect("tjqy.asp?msg="&msg)
end if
dsql="select * from gongsixinxi where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("��˾����")=request.Form("��˾����")
rs("���")=request.Form("���")
rs("��˾��ַ")=request.Form("��˾��ַ")
rs("��־")=request.Form("��־")
rs("ռ�����")=request.Form("ռ�����")
rs("��Ͷ��")=request.Form("��Ͷ��")
rs("��ҪӪ̬")=request.Form("��ҪӪ̬")
rs("�г�����")=request.Form("�г�����")
rs("�Ǽ�ʱ��")=request.Form("�Ǽ�ʱ��")
rs("��������")=request.Form("��������")
rs("�������˵绰")=request.Form("�������˵绰")
rs("���������̻�ְ��")=request.Form("���������̻�ְ��")
rs("�������˼���")=request.Form("�������˼���")
rs("��������")=request.Form("��������")
rs("�������˵绰")=request.Form("�������˵绰")
rs("���������̻�ְ��")=request.Form("���������̻�ְ��")
rs("�������˼���")=request.Form("�������˼���")
rs.update
set rs=nothing
if zfzr=""then
dsql="select * from wenshangxinxi where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("����")=request.Form("��������")
rs("�ֻ�")=request.Form("�������˵绰")
rs("�̻�ְ��")=request.Form("���������̻�ְ��")
rs("����")=request.Form("�������˼���")
rs("������λ")=request.Form("��˾����")
rs.update
set rs=nothing
end if
if ffzr="" then
dsql="select * from wenshangxinxi where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
if request.Form("��������")<>"" then
rs.addnew
rs("����")=request.Form("��������")
rs("�ֻ�")=request.Form("�������˵绰")
rs("�̻�ְ��")=request.Form("���������̻�ְ��")
rs("����")=request.Form("�������˼���")
rs("������λ")=request.Form("��˾����")
rs.update
end if
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