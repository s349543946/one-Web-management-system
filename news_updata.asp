<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp" -->
<% 
id=request("id")
title=request.form("title")
url=request.form("url")
body=request.form("body")
color=request.form("color")
ssfl=request.form("ssfl")
ly=request.form("ly")
zz=request.form("zz")
img=request.form("img")
if id="" or not isnumeric(id) then
Response.Write "<script>alert('��������');history.go(-1);</script>" 
Response.End()
end if
SQL="Select * from news where id="&id
set rs=server.createobject("adodb.recordset")
rs.open SQL,conn,1,3
if rs.eof and rs.bof then
Response.Write "<script>alert('��������ȷ��IDֵ�����ڣ�');history.go(-1);</script>" 
Response.End()
end if
if title=""  then 
response.Write("<script language=javascript>alert('���ű��ⲻ��Ϊ��!');history.go(-1)</script>") 
response.end 
end if
if body=""  then 
response.Write("<script language=javascript>alert('�������ݲ���Ϊ��!');history.go(-1)</script>") 
response.end 
end if
rs("title")=title
rs("url")=url
rs("body")=body
rs("color")=color
rs("ssfl")=ssfl
rs("ly")=ly
rs("zz")=zz
rs("img")=img
rs("data")=now()
rs.update 
rs.close 
response.write "<script>alert('��ϲ�㣬����ҳ�������޸ĳɹ���');window.location.href='manage_news.asp';</script>" 

%> 
