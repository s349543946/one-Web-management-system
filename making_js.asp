<!--#include file="../xyconn.asp" -->
<% 
id=request.QueryString("id")
if id="" or not isnumeric(id) then
Response.Write "<script>alert('��������');history.go(-1);</script>" 
Response.End()
end if
set js = server.CreateObject("ADODB.RecordSet")
sql="select * from ad where id="&id
set js = conn.Execute (Sql) 
if js("lx")=1 then
goaler = goaler + "<a href=""adv_dir.asp?id="& js("id")&""" target="""& js("open_m")&"""><img src="""& js("img")&""" width="""& js("width")&""" height="""& js("height")&"""  title="""& js("sm")&"""></a>"  
elseif js("lx")=2 then
goaler = goaler + "<embed src="""&js("img")&""" quality=""height"" type=""application/x-shockwave-flash""  width="""& js("width")&""" height="""& js("height")&""" ></embed>" 
else
goaler = goaler + ""& js("code")&"" 
end if
'��ʼ����JS����ļ�
goaler = "" + goaler + ""
goaler = "document.write('" & goaler & "')"
FolderPath = Server.MapPath("../")
Set fso = Server.CreateObject("Scripting.FileSystemObject")
Set fout = fso.CreateTextFile(FolderPath&"\advfile\ad"& js("id")&".js")
fout.WriteLine goaler
'�ر����ݳ�����
fout.close
set fout = nothing
js.close
set js = nothing
conn.close
set conn=nothing
Response.Write "<script>alert('��ϲ�㣬����Ѿ�����!');window.location.href='manage_ad.asp';</script>" 
%>
