<!--#include file="../xyconn.asp" -->
<!--#include file="md5.Asp"-->
<% 
'��վ����Ա��¼���
admin=Replace(trim(request.Form("admin")), "'", "''") 
password=md5(Request("password"))
verifycode=request.form("verifycode") 
if admin=""  then 
response.Write("<script language=javascript>alert('��¼������Ϊ��!');history.go(-1)</script>") 
response.end
end if 
if  password="" then 
response.Write("<script language=javascript>alert('��¼���벻��Ϊ��!');history.go(-1)</script>") 
response.end
end if 
if  VerifyCode="" then 
response.Write("<script language=javascript>alert('��֤�벻��Ϊ��!');history.go(-1)</script>") 
response.end
end if 
if cstr(Session("firstecode"))<>cstr(Request.Form("VerifyCode")) then
response.Write("<script language=javascript>alert('��֤�����!');history.go(-1)</script>")
response.End
end if
sql="select * from admin_user where admin='"&admin&"' and password='"&password&"'" 
set rs=conn.execute(sql) 

if rs.eof or rs.bof then 
response.Write("<script language=javascript>alert('��¼�û����������������������д!');history.go(-1)</script>")
else 
session("admin")=rs("id") 
session.Timeout=60
sql="update admin_user set login_num=login_num+1 where id="&session("admin") 
conn.execute(sql)
dim ip
ip=request.servervariables("remote_addr")
set xy=server.createobject("adodb.recordset") 
xy.open "select * from admin_user_count",conn,1,3 
xy.addnew 
xy("login_ip")=ip
xy("login_name")=rs("admin")
xy.update 
xy.close 
set xy=nothing 
response.redirect "xycms.asp" 
end if 
%>   