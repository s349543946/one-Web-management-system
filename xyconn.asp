<!--#include file="inc/function.asp"-->
<%
Response.ExpiresAbsolute =Now() - 1
Response.Expires=0
Response.CacheControl="no-cache" 
dim db,conn,connstr
db="/xydata/xycms.mdb"
Set conn = Server.CreateObject("ADODB.Connection")
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"")
conn.Open connstr
If Err Then
	err.Clear
	Set conn = Nothing
	Response.Write "���ݿ����ӳ������������ִ���"
	Response.End
End If
%>
