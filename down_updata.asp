<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp"-->
<%
id=Trim(request("id"))
set rs=server.createobject("adodb.recordset")
sql="select * from [down] where id="&id
rs.open sql,conn,1,3
title=request.form("title")
url=request.form("url")
body=request.form("body")
ly=request.form("ly")
zz=request.form("zz")
rs("title")=title
rs("url")=url
rs("body")=body
rs("ly")=ly
rs("zz")=zz
rs.update
rs.close
set rs=nothing
Response.Write "<script>alert('恭喜你，信息页面内容修改成功！');window.location.href='manage_down.asp';</script>" 
%>