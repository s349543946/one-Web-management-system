<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp"-->
<%
id=request("id")
set rs=server.createobject("adodb.recordset")
sql="select * from video where id="&id
rs.open sql,conn,1,3
v_name=request.form("v_name")
v_url=request.form("v_url")
rs("v_name")=v_name
rs("v_url")=v_url
rs.update
rs.close
set rs=nothing
Response.Write "<script>alert('恭喜你，视频内容修改成功！');window.location.href='manage_video.asp';</script>" 
%>