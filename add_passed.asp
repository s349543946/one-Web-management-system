<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp" -->
<%
set rs=server.createobject("adodb.recordset")
sql="select * from ad"
rs.open sql,conn,1,3
title=request.form("title")
url=request.form("url")
width=request.form("width")
height=request.form("height")
img=request.form("img")
lx=request.form("lx")
sm=request.form("sm")
bz=request.form("bz")
open_m=request.form("open_m")
code=request.form("code")
if title=""  then 
response.Write("<script language=javascript>alert('������Ʋ���Ϊ��!');history.go(-1)</script>") 
response.end 
end if
if lx=1 or lx=2  then
if img=""  then 
response.Write("<script language=javascript>alert('���ͼƬ����Ϊ��!');history.go(-1)</script>") 
response.end 
end if
if url=""  then 
response.Write("<script language=javascript>alert('������ӵ�ַ����Ϊ��!');history.go(-1)</script>") 
response.end 
end if
if width=""  then 
response.Write("<script language=javascript>alert('����������!');history.go(-1)</script>") 
response.end 
end if
if height=""  then 
response.Write("<script language=javascript>alert('��������߶�!');history.go(-1)</script>") 
response.end 
end if
IF not isNumeric(request("width")) or not isNumeric(request("height"))then
response.write("<script>alert(""���ߴ���붼Ϊ���֣�""); history.go(-1);</script>")
response.end
end if
else
if code=""  then 
response.Write("<script language=javascript>alert('���ֹ�����ݲ���Ϊ��!');history.go(-1)</script>") 
response.end 
end if
end if

rs.addnew
rs("title")=title
rs("url")=url
rs("width")=width
rs("height")=height
rs("img")=img
rs("lx")=lx
rs("sm")=sm
rs("bz")=bz
rs("code")=code
rs("open_m")=open_m
rs.update
rs.close
set rs=nothing
conn.close
set rs=nothing
Response.Write "<script>alert('������ӳɹ�������������JS�ļ����ٽ��е���!');window.location.href='manage_ad.asp';</script>" 
%>