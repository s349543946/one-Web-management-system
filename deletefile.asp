<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="seeion.asp"-->
<%
On Error Resume Next
Set fs = Server.CreateObject("Scripting.FileSystemObject")
deFile = Server.MapPath(trim(request("file")))
fs.DeleteFile deFile, True
if Err then
response.Write "<script>window.close();</script>"
Err.clear
response.end()
end if
response.Write "<script>window.close();</script>"
%>