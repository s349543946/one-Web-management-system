<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp"-->
<!--#include file="function.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��ҳ�˵�����</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-size:12px;
}
.input_1{border:1px solid #7F9DB9; width:80px; padding:3px; margin:0px;}		
.button{font-size:12px; background:url(button.gif); border:1px solid #BDC5CA; height:23px;  color:#333333}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE5 {color: #FF0000}
-->
</style>
</head>
<body>
<% Action= Request("Action")
Select Case Action
	Case "add"
		Call add()
	Case Else 
		Call main()
end Select
%>
<% sub main()%>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="90%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="2%"><div align="center"><img src="images/tb.gif" width="16" height="16" /></div></td>
                <td width="88%" class="STYLE1"><span class="STYLE3">�㵱ǰ��λ��</span>��[��վ��ҳ�����˵�����]</td>
                <td width="2%" class="STYLE1"><img src="images/22.gif" width="14" height="14" /></td>
                <td width="8%" class="STYLE1"><a href="manage_menu.asp?action=add" target="main">�����ҳ�˵�</a></td>
              </tr>
            </table></td>
            <td width="10%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td>
          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#a9c5d0">
            <tr bgcolor="#DDEFF9" align="center" style="line-height:26px;">
              <td width="5%">ID</td>
              <td width="7%">״̬</td>
              <td width="28%">��Ŀ����</td>
              <td width="27%">����</td>
              <td width="13%">�򿪷�ʽ</td>
              <td width="9%">����</td>
              <td width="11%">��������</td>
            </tr>
            <% call SortList(0,0)%>
            </table>
        </td>
        <td width="8" background="images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="images/tab_18.gif" width="12" height="35" /></td>
        <td>&nbsp;</td>
        <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
<% end sub %>
<% sub add()%>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">�㵱ǰ��λ��</span>��[�����ҳ�˵�]</td>
              </tr>
            </table></td>
            <td width="54%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td>
            <form action="manage_menu.asp?act=add" method="post" name="add">
        <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >
      <tr  onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8" >
        <td height="25" width="10%" class="td">�˵����ƣ�</td>
        <td width="90%"  class="td"><input name="title" type="text" size="30"  /></td>
      </tr>
      <tr  onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8" >
        <td height="25" width="10%" class="td">�������ࣺ</td>
        <td width="90%"  class="td"><select name="Pid" id="Pid">
          <option value="0">��������</option>
          <% call subtree(0,0)%>
        </select></td>
      </tr>
      <tr  onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
        <td width="10%" height="13" class="td">���ӵ�ַ��</td>
        <td class="td"><input name="url" type="text" size="30"  /></td>
      </tr>
      <tr  onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
        <td width="10%" height="12" class="td">�򿪷�ʽ��</td>
        <td class="td"><select name="open_m" id="open_m">
          <option value="_self">ԭ����</option>
          <option value="_blank">�´���</option>
        </select>
          <font color="red">*</font>   
          </td>
      </tr>
      <tr  onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
        <td height="25" width="10%" class="td">����ID��</td>
        <td class="td"><input name="pl_id" type="text" size="30"  /> 
          ����ԽСԽ��ǰ��</td>
      </tr>
      <tr  onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
        <td height="25" class="td">�Ƿ����ظò˵���</td>
        <td class="td"><select name="view" id="view">
          <option value="1">��ʾ</option>
          <option value="2">����</option>
        </select> 
          ���غ�ǰ̨������ʾ�ò˵���</td>
      </tr>
      <tr  onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
        <td height="25" class="td">&nbsp;</td>
        <td class="td"><label>
        <input type="submit" name="button" id="button" value="�ύ����"  class="button"/>
        </label></td>
      </tr>
      
    </table></form></td>
        <td width="8" background="images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="images/tab_18.gif" width="12" height="35" /></td>
        <td>&nbsp;</td>
        <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
<% end sub %>
</body>
</html>
<% 
if Request.QueryString("edit")="ok" then
id=request("id") 
sql="select * from menu where id="&id 
set rs=server.CreateObject("adodb.recordset")
rs.open sql,conn,1,3
IF not isNumeric(request("pl_id")) then
response.write("<script>alert(""����ID����Ϊ���֣�""); history.go(-1);</script>")
response.end
end if
rs("title")=request.form("title") 
rs("url")=request.form("url") 
rs("open_m")=request.form("open_m") 
rs("pl_id")=request.form("pl_id") 
rs("view")=request.form("view") 
rs.update 
rs.close 
response.Write("<script language=""javascript"">alert(""�˵��޸ĳɹ���"");window.location.href='manage_menu.asp';</script>")
end if
%> 
<%
if request("act")="del" then
	id=request("id")
	if id="" then
	Response.Write "<script language='javascript'>alert('��������!');document.location.href('manage_menu.asp');</script>"
	Response.End()
	end if
set rs=server.createobject("adodb.recordset")
rs.open "Select * from menu where id="&Request("id"),conn,1,3
if rs.bof and rs.eof then
	Response.Write "<script language='javascript'>alert('���ݿ���û�иü�¼��');document.location.href('manage_menu.asp');</script>"
	Response.End()
else
	rs.Delete
	rs.Update
	Response.Write "<script language='javascript'>alert('ɾ���ɹ���');document.location.href('manage_menu.asp');</script>"
end if
end if
%>
<%
if request("act")="add" then
set rs=server.createobject("adodb.recordset")
sql="select * from menu"
rs.open sql,conn,1,3
Pid=request.form("Pid")
title=request.form("title")
url=request.form("url")
open_m=request.form("open_m")
pl_id=request.form("pl_id")
view=request.form("view")
if title=""  then 
response.Write("<script language=javascript>alert('�˵����Ʋ���Ϊ��!');history.go(-1)</script>") 
response.end 
end if
if url=""  then 
response.Write("<script language=javascript>alert('���ӵ�ַ����Ϊ��!');history.go(-1)</script>") 
response.end 
end if
IF not isNumeric(request("pl_id"))  then
response.write("<script>alert("" ��������ID����Ϊ���֣�""); history.go(-1);</script>")
response.end
end if
rs.addnew
rs("Pid")=Pid
rs("title")=title
rs("url")=url
rs("open_m")=open_m
rs("pl_id")=pl_id
rs("view")=view
rs.update
rs.close
set rs=nothing
conn.close
set rs=nothing
Response.Write "<script>alert('�˵����ӳɹ���');window.location.href='manage_menu.asp';</script>" 
end if
%>
