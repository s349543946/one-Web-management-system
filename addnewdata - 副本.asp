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
if request.Form("username")="" then
msg=msg&"<br>"&"*�û�������Ϊ��"
end if
if len(request.Form("username"))<5 and len(request.Form("username"))>0 then
msg=msg&"<br>"&"*�û�������5λ"
end if
if len(request.Form("username"))>20 then
msg=msg&"<br>"&"*�û�������20λ"
end if
if request.Form("password")="" then
msg=msg&"<br>"&"*���벻��Ϊ��"
end if
if request.Form("password2")="" then
msg=msg&"<br>"&"*ȷ���������벻��Ϊ��"
end if
if strcomp(cstr(request.Form("password")),cstr(request.Form("password2")))<>0 then
msg=msg&"<br>"&"*�����������벻ͬ"
end if
if len(request.Form("password"))<6 and len(request.Form("password"))<>0 then
msg=msg&"<br>"&"*���벻��6λ"
end if
if len(request.Form("password"))>20 then
msg=msg&"<br>"&"*���볬��20λ"
end if
if request.Form("question")="" then
msg=msg&"<br>"&"*��ʾ���ⲻ��Ϊ��"
end if
if request.Form("answer")="" then
msg=msg&"<br>"&"*��ʾ�𰸲���Ϊ��"
end if
if request.Form("��˾����")="" then
msg=msg&"<br>"&"*��˾���Ʋ���Ϊ��"
end if
if request.Form("quyu_class_id")="" then
msg=msg&"<br>"&"*ʡ�ݲ���Ϊ��"
end if
if request.Form("quyu_nclass_id")="" then
msg=msg&"<br>"&"*���в���Ϊ��"
end if
if request.Form("ͨѶ��ַ")="" then
msg=msg&"<br>"&"*ͨѶ��ַ����Ϊ��"
end if
if request.Form("��������")="" then
msg=msg&"<br>"&"*�������˲���Ϊ��"
end if
if strcomp(msg,"ע�������Ϣ��")>0 then
response.Redirect("reg.asp?msg=" & msg)
end if
if ac="adduser" then
set rsc=server.createobject("adodb.recordset")
sql="select * from info where username='"&request.Form("username")&"'"
rsc.open sql,conn,1,1
ck=rsc("username")
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

set rsc3=server.createobject("adodb.recordset")
sql="select * from province where ʡ��id='"&request.Form("quyu_class_id")&"'"
rsc3.open sql,conn,1,1
shengfen=rsc3("ʡ��")
set rsc3=nothing

set rsc4=server.createobject("adodb.recordset")
sql="select * from province_city where ����id='"&request.Form("quyu_nclass_id")&"'"
rsc4.open sql,conn,1,1
chengshi=rsc4("����")
set rsc4=nothing

set rsc5=server.createobject("adodb.recordset")
sql="select * from hangyedalei where ��ҵ����id='"&request.Form("tradeid")&"'"
rsc5.open sql,conn,1,1
dalei=rsc5("��ҵ����")
set rsc5=nothing

set rsc6=server.createobject("adodb.recordset")
sql="select * from hangyexiaolei where ��ҵС��id='"&request.Form("smid")&"'"
rsc6.open sql,conn,1,1
xiaolei=rsc6("��ҵС��")
set rsc6=nothing

if ck<>"" then
msg=msg&"<br>"&"�û�������ע��"
response.Redirect("reg.asp?msg="&msg)
end if
dsql="select * from info where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("username")=request.Form("username")
rs("password")=request.Form("password")
rs("question")=request.Form("question")
rs("answer")=request.Form("answer")
rs.update
set rs=nothing

dsql1="select * from company_info where company_id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql1,conn,1,3
rs.addnew
rs("username")=request.Form("username")
rs("��˾����")=request.Form("��˾����")
rs("��ҵ����")=dalei
rs("��ҵС��")=xiaolei
rs("��ҵ����")=request.Form("��ҵ����")
rs("ע���ʽ�(��Ԫ)")=request.Form("ע���ʽ�")
rs("�г�����")=request.Form("�г�����")
rs("Ա������")=request.Form("Ա������")
rs("ʡ��")=shengfen
rs("����")=chengshi
rs("��������")=request.Form("��������")
rs("��������")=request.Form("��������")
rs("ռ�����")=request.Form("ռ�����")
rs("���")=request.Form("���")
rs("��������")=request.Form("��������")
rs("ͨѶ��ַ")=request.Form("ͨѶ��ַ")
rs("��˾��ϵ�绰")=request.Form("��˾��ϵ�绰")
rs("��������")=request.Form("��������")
rs("�����̻�")=request.Form("�����̻�")
rs("��ַ")=request.Form("��ַ")
rs.update
set rs=nothing

if zfzr="" then
dsql="select * from wenshangxinxi where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("����")=request.Form("��������")
rs("�ֻ�")=request.Form("���������ֻ�")
rs("�Ա�")=request.Form("���������Ա�")
rs("��������")=request.Form("��������סַ")
rs("����")="�㽭"+"����"+"̩˳"+request.Form("�������˼���")
rs("qq")=request.Form("zqq")
rs("���֤")=request.Form("�����������֤")
rs("������λ")=request.Form("��˾����")
if request.Form("�������˹���ְ��")<>"" then
rs("����ְ��")=request.Form("��˾����")+request.Form("�������˹���ְ��")
end if
rs("�����̻�")=request.Form("�����̻�")
if request.Form("���������̻�ְ��")<>"" then
rs("�̻�ְ��")=request.Form("�����̻�")+request.Form("���������̻�ְ��")
end if
rs("����")=request.Form("�������˴���")
rs("�ʱ�")=request.Form("���������ʱ�")
rs("����")=request.Form("������������")
rs.update
set rs=nothing
end if

if zfzr<>"" then
set rsc6=server.createobject("adodb.recordset")
str=request.Form("�����̻�")
sql="select * from wenshangxinxi where ����='"&request.Form("��������")&"' and �����̻� like '%"&str&"%'"
rsc6.open sql,conn,1,1
sh=rsc6("�����̻�")
set rsc6=nothing

set rsc7=server.createobject("adodb.recordset")
str1=request.Form("��˾����")
sql="select * from wenshangxinxi where ����='"&request.Form("��������")&"' and ������λ like '%"&str1&"%'"
rsc7.open sql,conn,1,1
gz=rsc7("������λ")
set rsc7=nothing

dsql="select * from wenshangxinxi where ����='"&request.Form("��������")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
if gz="" then
rs("������λ")=rs("������λ")+"��"+request.Form("��˾����")
if request.Form("�������˹���ְ��")<>"" then
rs("����ְ��")=rs("����ְ��")+"��"+request.Form("��˾����")+request.Form("�������˹���ְ��")
end if
end if
if sh="" then
if rs("�����̻�")<>""then
if request.Form("�����̻�")<>"" then
rs("�����̻�")=rs("�����̻�")+"��"+request.Form("�����̻�")
end if
if request.Form("���������̻�ְ��")<>"" then
rs("�̻�ְ��")=rs("�̻�ְ��")+"��"+request.Form("�����̻�")+request.Form("���������̻�ְ��")
end if
end if
if rs("�����̻�")="" then
rs("�����̻�")=+request.Form("�����̻�")
if request.Form("���������̻�ְ��")<>"" then
rs("�̻�ְ��")=request.Form("�����̻�")+request.Form("���������̻�ְ��")
end if
end if
end if

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
rs("�ֻ�")=request.Form("���������ֻ�")
rs("�Ա�")=request.Form("���������Ա�")
rs("��������")=request.Form("��������סַ")
rs("����")="�㽭"+"����"+"̩˳"+request.Form("�������˼���")
rs("qq")=request.Form("fqq")
rs("���֤")=request.Form("�����������֤")
rs("������λ")=request.Form("��˾����")
if request.Form("�������˹���ְ��")<>"" then
rs("����ְ��")=request.Form("��˾����")+request.Form("�������˹���ְ��")
end if
rs("�����̻�")=request.Form("�����̻�")
if request.Form("�������˹���ְ��")<>"" then
rs("�̻�ְ��")=request.Form("�����̻�")+request.Form("���������̻�ְ��")
end if
rs("����")=request.Form("�������˴���")
rs("�ʱ�")=request.Form("���������ʱ�")
rs("����")=request.Form("������������")
rs.update
end if
set rs=nothing
end if

if ffzr<>"" then
set rsc8=server.createobject("adodb.recordset")
str2=request.Form("�����̻�")
sql="select * from wenshangxinxi where ����='"&request.Form("��������")&"' and �����̻� like '%"&str2&"%'"
rsc8.open sql,conn,1,1
sh1=rsc8("�����̻�")
set rsc8=nothing

set rsc9=server.createobject("adodb.recordset")
str3=request.Form("��˾����")
sql="select * from wenshangxinxi where ����='"&request.Form("��������")&"' and ������λ like '%"&str3&"%'"
rsc9.open sql,conn,1,1
gz1=rsc9("������λ")
set rsc9=nothing

dsql="select * from wenshangxinxi where ����='"&request.Form("��������")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
if gz1="" then
rs("������λ")=rs("������λ")+"��"+request.Form("��˾����")
if request.Form("�������˹���ְ��")<>"" then
rs("����ְ��")=rs("����ְ��")+request.Form("��˾����")+request.Form("�������˹���ְ��")
end if
end if
if sh1="" then
if rs("�����̻�")<>""then
if request.Form("�����̻�")<>"" then
rs("�����̻�")=rs("�����̻�")+"��"+request.Form("�����̻�")
end if
if request.Form("���������̻�ְ��")<>"" then
rs("�̻�ְ��")=rs("�̻�ְ��")+"��"+request.Form("�����̻�")+request.Form("���������̻�ְ��")
end if
end if
if rs("�����̻�")="" then
rs("�����̻�")=+request.Form("�����̻�")
if request.Form("���������̻�ְ��")<>"" then
rs("�̻�ְ��")=request.Form("�����̻�")+request.Form("���������̻�ְ��")
end if
end if
end if
rs.update
set rs=nothing
end if

if request.Form("���������̻�ְ��")="�᳤" then
dsql="select * from shanghui where �̻�='"&request.Form("�����̻�")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("�᳤")=request.Form("��������")
rs.update
set rs=nothing
end if

if request.Form("���������̻�ְ��")="���鳤" then
dsql="select * from shanghui where �̻�='"&request.Form("�����̻�")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("���鳤")=request.Form("��������")
rs.update
set rs=nothing
end if

if request.Form("���������̻�ְ��")="�����᳤" then
dsql="select * from shanghui where �̻�='"&request.Form("�����̻�")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("�����᳤")=request.Form("��������")
rs.update
set rs=nothing
end if

if request.Form("���������̻�ְ��")="���᳤" then
dsql="select * from shanghui where �̻�='"&request.Form("�����̻�")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("���᳤")=request.Form("��������")
rs.update
set rs=nothing
end if

if request.Form("���������̻�ְ��")="���񸱻᳤" then
dsql="select * from shanghui where �̻�='"&request.Form("�����̻�")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("���񸱻᳤")=request.Form("��������")
rs.update
set rs=nothing
end if

if request.Form("���������̻�ְ��")="�᳤" then
dsql="select * from shanghui where �̻�='"&request.Form("�����̻�")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("�᳤")=request.Form("��������")
rs.update
set rs=nothing
end if

if request.Form("���������̻�ְ��")="���鳤" then
dsql="select * from shanghui where �̻�='"&request.Form("�����̻�")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("���鳤")=request.Form("��������")
rs.update
set rs=nothing
end if

if request.Form("���������̻�ְ��")="�����᳤" then
dsql="select * from shanghui where �̻�='"&request.Form("�����̻�")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("�����᳤")=request.Form("��������")
rs.update
set rs=nothing
end if

if request.Form("���������̻�ְ��")="���᳤" then
dsql="select * from shanghui where �̻�='"&request.Form("�����̻�")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("���᳤")=request.Form("��������")
rs.update
set rs=nothing
end if

if request.Form("���������̻�ְ��")="���񸱻᳤" then
dsql="select * from shanghui where �̻�='"&request.Form("�����̻�")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("���񸱻᳤")=request.Form("��������")
rs.update
set rs=nothing
end if
%>
<center>
<a href="index.asp" target="_self">ע��ɹ�,�����½</a>
</center>
<%
end if
%>
</body>
</html>