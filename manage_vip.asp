<!--#include file="../Xyconn.asp"-->
<!--#include file="seeion.asp"-->
<!--#include file="htmlfunction.asp"-->
<!--#include file="page.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-size:12px;
}
.button{font-size:12px; background:url(button.gif); border:1px solid #BDC5CA; height:23px;  color:#333333}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE5 {color: #FF0000}
-->
</style>
<script language="javascript"> 
<!-- 
function CheckAll(){ 
 for (var i=0;i<eval(form.elements.length);i++){ 
  var e=form.elements[i]; 
  if (e.name!="allbox") e.checked=form.allbox.checked; 
 } 
} 
--> 
</script> 
</head>
<body>
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
                <td width="95%" class="STYLE1"><span class="STYLE3">�㵱ǰ��λ��</span>��[��Ӣ��Ա���ݹ���]</td>
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
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
        <form id="form" name="form" method="post" action="manage_vip.asp?del=checkbox"> 
      <tr>

 <td colspan="2">
<%	
set rs=server.createobject("adodb.recordset")
exec="select * from [xy_vip] order by id desc"  
rs.open exec,conn,1,1 
if rs.eof then
response.write ("<div style=""padding:10px;"">������Ϣ��¼!</div>")
else
rs.PageSize =20 'ÿҳ��¼����
iCount=rs.RecordCount '��¼����
iPageSize=rs.PageSize
maxpage=rs.PageCount 
page=request.querystring("page")
if Not IsNumeric(page) or page="" then
page=1
else
page=cint(page)
end if
if page<1 then
page=1
elseif  page>maxpage then
page=maxpage
end if
rs.AbsolutePage=Page
if page=maxpage then
x=iCount-(maxpage-1)*iPageSize
else
x=iPageSize
end if	
for i=1 to rs.pagesize 
j=i 
if j mod 2=0 then 
bg="#F1F5F8" 
else 
bg="#FFFFFF" 
end if 
%>
</td>
      </tr>
      <tr  onmouseout="style.backgroundColor='<%=bg%>'" bgcolor="<%=bg%>">
        <td colspan="3" ><table width="100%" border="0" cellpadding="5" cellspacing="0">
            <tr>
              <td width="9%" class="td"><input name="ID" type="checkbox" id="ID" value="<%=rs("id")%>" />
              VIP_ID:<%=rs("id")%></td>
              <td width="26%" height="25" class="td">
��Ϣ���⣺ <a href="edit_vip.asp?id=<%=rs("id")%>"><%=left(removehtml(rs("title")),50)%></a>  
</td>
<td width="21%" height="25" class="td">
<%if rs("tuijian")=0 then%><font color="#0000CC">δ�Ƽ�</font><% else%><font color="#FF0000">���Ƽ�</font><% end if%> 
</td>
              <td width="23%" class="td">����ʱ�䣺<%=rs("data")%></td>
              <td width="9%" class="td"><div align="center">
                <input type="button" name="Submit3" value="�޸�" onclick="window.location.href='edit_vip.asp?id=<%=rs("id")%>' "  class="button"/>
              </div></td>
              <td width="12%" class="td">
                <div align="center">
                    <input type="button" name="Submit" value="ɾ��" onclick="javascript:if(confirm('ȷ��ɾ����ɾ���󲻿ɻָ�!')){window.location.href='manage_vip.asp?id=<%=rs("id")%>&amp;del=ok';}else{history.go(0);}"  class="button"/>
                  </div></td>
            </tr>
          </table>
            <% 
rs.movenext 
if rs.eof then exit for 
next 
%>
            <%
end if
%></td>
      </tr>
      <tr  onmouseout="style.backgroundColor='<%=bg%>'" bgcolor="<%=bg%>">
        <td width="60" height="30"> <div style="padding-left:5px;">
          <input type="checkbox" name="allbox" onclick="CheckAll()" />
        </div>
         </td>
        <td width="45%"><select name="lx">
          <option selected="selected" value="">��������</option>
          <option value="1">����ɾ��</option>
        </select>
          <input type="submit" name="button" id="button" value="�ύ"  class="button"/></td>
        </form><td width="49%" height="30"><%call PageControl(iCount,maxpage,page,"border=0 align=right","<p align=right>")
rs.close
set rs=nothing
%></td>
      </tr>  
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
</body>
</html>
<%
if request("del")="ok" then
set rs=server.createobject("adodb.recordset")
id=Request.QueryString("id")
sql="select * from [xy_vip] where id="&id
rs.open sql,conn,2,3
rs.delete
rs.update
Response.Write "<script>alert('��ϲ�㣬��ǰ��Ϣ����ɾ���ɹ���');window.location.href='manage_vip.asp';</script>"
end if 
%>
<%
if Request.QueryString("del")="checkbox" then
if Request("id")="" then
Response.Write "<script>alert('����!��ѡ��Ҫ�����ļ�¼!');window.location.href='manage_vip.asp';</script>" 
response.end()
end if
if Request.QueryString("del")="checkbox" then
lx=request.Form("lx")
if lx="" then
Response.Write "<script>alert('��ѡ���������!');window.location.href='manage_vip.asp';</script>" 
response.end
end if
if lx=1 then
sql="delete from [xy_vip] where id in ("&Request("id")&")"
conn.Execute ( sql )
end if
conn.close
set conn=nothing
Response.Write "<script>alert('��ϲ�㣬��Ϣ�����ɹ�!');window.location.href='manage_vip.asp';</script>" 
end if
end if
%>