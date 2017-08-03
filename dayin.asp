<head><title>查询结果</title></head> 
<body>
<body bgcolor="#ffffff"> 
<p align="center"><br> 
"统计查询共有<% Response.Write(RS.RecordCount) %>条纪录</p><br> 
<div align="center"><center> 
<table border=1><tr>
<%
for i=0 to rs.fields.count-1
response.write("<td>"&rs(i).name&"</td>")
next
%>
</tr>
<%
rs.movefirst
while not rs.Eof
response.write("<tr>")
for i=0 to rs.fields.count-1
response.write("<td>"&rs(i)&"</td>")
next
response.write("</tr>")
rs.movenext
wend
%></table>
</center>
</div>
</body>