<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script charset="utf-8" src="../editor/kindeditor.js"></script>
<script charset="utf-8" src="../editor/lang/zh_CN.js"></script>
<script charset="utf-8" src="../editor/plugins/code/prettify.js"></script>
<script charset="utf-8" src="js/e.js"></script>
<title>������Ϣ</title>
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
                <td width="95%" class="STYLE1"><span class="STYLE3">�㵱ǰ��λ��</span>��[��Ա��ҵ��Ϣ����]</td>
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
        <form  name="add" method="post" action="add_member.asp?act=ok">
        <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >
        <tr onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8" >
        <td height="28" width="7%" class="td">��Ϣ����</td>
        <td width="93%"  class="td">
          <input name="title" type="text" size="40"  />
          
          <label> <img src="images/ts.gif" width="14" height="15" alt="����ͱ�����ɫ" /></label></td>
      </tr>
  <tr  onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
    <td height="25" width="7%" class="td">��Ϣ��Դ</td>
    <td class="td"><input name="ly" type="text" value="��վ" size="30"  /></td>
  </tr>
       <tr onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
        <td height="13" class="td">��������</td>
        <td class="td"><% 
exec="select * from admin_user where id="&session("admin")&""
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> <input name="zz" type="text" value="<%=rs("admin")%>" size="30"  /></td>
      </tr>
       <tr onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
      <td height="12" class="td">��������ͼ</td>
      <td class="td"><iframe src='UpLoadPic.asp?id=img&value=<%=img%>' frameborder=0 scrolling=no width='100%' HEIGHT='25'></iframe><input type="hidden" name="img" /></td>
    </tr>
     <tr onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
        <td height="25" class="td">��Ϣ����</td>
        <td class="td"><textarea name="body" style="width:700px;height:270px;visibility:hidden;"></textarea></td>
      </tr>
     <tr onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
         <td height="12" class="td">&nbsp;</td>
         <td class="td"><input type="submit" name="button" id="button" value="ȷ���ύ"  class="button"/></td>
       </tr>
    </table>
    </form>
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
if Request.QueryString("act")="ok" then
set rs=server.createobject("adodb.recordset")
sql="select * from [xymember]"
rs.open sql,conn,1,3
title=request.form("title")
body=request.form("body")
img=request.form("img")
ly=request.form("ly")
zz=request.form("zz")
if title=""  then 
response.Write("<script language=javascript>alert('��Ϣ���ⲻ��Ϊ��!');history.go(-1)</script>") 
response.end 
end if
if body=""  then 
response.Write("<script language=javascript>alert('��Ϣ���ݲ���Ϊ��!');history.go(-1)</script>") 
response.end 
end if
rs.addnew
rs("title")=title
rs("body")=body
rs("img")=img
rs("ly")=ly
rs("zz")=zz
rs.update
rs.close
set rs=nothing
conn.close
set rs=nothing
Response.Write "<script>alert('��ϲ�㣬��Ϣ�������ӳɹ�������������ӣ�');window.location.href='add_member.asp';</script>" 
end if
%>