<head><title>��ѯ���</title></head> 
<body>
<body bgcolor="#ffffff"> 
<p align="center"><br> 
"ͳ�Ʋ�ѯ����<% Response.Write(RS.RecordCount) %>����¼</p><br> 
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