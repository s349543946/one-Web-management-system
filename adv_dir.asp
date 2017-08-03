<!--#include file="Xyconn.asp"-->
<% 
id=request.QueryString("id")
if id="" or not isnumeric(id) then
response.write "<script>alert('参数错误！');window.location.href='/index.asp';</script>"
Response.End()
end if
exec="select * from ad where id="&id 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
sql="update ad set hit=hit+1 where id="& request.QueryString("id") '点击次数
conn.execute(sql) 
response.redirect "" & rs("url")& "" 
%>