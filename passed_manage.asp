<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp" -->
<!--#include file="md5.Asp" -->
<%
dim u,i,letters
set rs=server.createobject("adodb.recordset")
sql="select * from admin_user"
rs.open sql,conn,1,3
admin=request.form("admin")
password=request.form("password")
password3=request.form("password3")
zsname=request.form("zsname")
mail=request.form("mail")
qx=request.form("qx")
if admin=""  then 
response.Write("<script language=javascript>alert('�����ʺŲ���Ϊ��!');history.go(-1)</script>") 
response.end 
end if
letters="0123456789abcdefghijklmnopqrstuvwxyz" 
admin=Lcase(trim(Request.Form("admin"))) 
for i=1 to len(admin) 
u=mid(admin,i,1) 
if Instr(letters,u)=0 then 
response.write "<script>alert('�����ʺ�ֻ������ĸ�����ּ��»������!');history.go(-1);</script>" 
response.end 
end if 
next 
if password=""  then 
response.Write("<script language=javascript>alert('��¼���벻��Ϊ��!');history.go(-1)</script>") 
response.end 
end if
rs.addnew
if request.Form("password")<>request.Form("password3") then 
Response.Write "<script>alert('�������벻һ�£����������룡');history.go(-1);</script>" 
response.end
end if
rs("admin")=admin
rs("password")=md5(request.form("password"))
rs("zsname")=zsname
rs("mail")=mail
rs("qx")=qx
rs.update
rs.close
set rs=nothing
conn.close
set rs=nothing
Response.Write "<script>alert('��ӳɹ������������ӣ�');window.location.href='admin_manage.asp';</script>" 
%>