<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp"-->
<!--#include file="md5.Asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����Ա����</title>
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
.STYLE7 {font-size: 12px; font-weight: bold; color: #006600; }
-->
</style>
</head>
<%
set rs1=server.createobject("adodb.recordset") 

exec="select * from shanghui  ORDER BY ID "
rs1.open exec,conn,1,1
%>
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
                <td width="95%" class="STYLE1"><span class="STYLE3">�㵱ǰ��λ��</span>��[����Ա����]</td>
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
            <table width="100%" border="0" cellpadding="5" cellspacing="0">
                            <%	
set rs=server.createobject("adodb.recordset") 
exec="select * from admin_user order by id asc" 
rs.open exec,conn,1,1 
if rs.eof then
response.Write "&nbsp;������Ϣ��"
else
rs.PageSize =50 'ÿҳ��¼����
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
%>
            <% 
for i=1 to rs.pagesize 
j=i 
if j mod 2=0 then 
bg="#F1F5F8" 
else 
bg="#FFFFFF" 
end if 
qx=rs("Ȩ��")
%> 
            <tr>
              <td width="10%" class="td">ID��<%=rs("id")%></td>
              <td width="14%" height="25" class="td"><%=rs("admin")%> </td>
      	
              <td width="18%" class="td">
<%if qx="1" then%><font color=#336699>��������Ա</font>
<%else%>
<font color=#336699>�̻����Ա</font>
<%end if%>
</td>
              <td width="14%" class="td">��¼ <%=rs("login_num")%> ��</td>
              <td width="27%" class="td">����¼��<%=rs("login_date")%></td>
              <td width="7%" class="td"><input type="button" name="Submit3" value="�޸�" onClick="window.location.href='edit_manage.asp?id=<%=rs("id")%>' "  class="button"/> </td>
              <td width="10%" class="td"><input type="button" name="Submit" value="ɾ��" onclick="javascript:if(confirm('ȷ��ɾ����ɾ���󲻿ɻָ�!')){window.location.href='admin_manage.asp?id=<%=rs("id")%>&amp;del=ok';}else{history.go(0);}"  class="button"/></td>         
            </tr>
             <% rs.movenext 
           if rs.eof then exit for 
           next 
           end if
            %>
          </table>
          <hr color="#666666" size="1" width="100%" />
          <form action="admin_manage.asp?act=add" method="post" name="add">
          <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >
          <tr>
            <td colspan="2"><span class="STYLE7">���ӹ���Ա</span></td>
          </tr>
      <tr onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8" >
        <td height="25" width="10%" class="td">����Ա�ʺţ�</td>
        <td width="90%"  class="td"><input name="admin" type="text" size="30"  /> 
        * [�����ʺ�ֻ������ĸ�����ּ��»������]</td>
      </tr>
      <tr onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
        <td width="10%" height="13" class="td">��¼���룺</td>
        <td class="td"><input name="password" type="text" size="30"  />
          * </td>
      </tr>
      <tr onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
        <td width="10%" height="12" class="td">ȷ�����룺</td>
        <td class="td"><input name="password3" type="text" size="30"  />
          * </td>
      </tr>
<tr> 
                                          <td width="24%" height="25" align="right">ѡ��Ȩ�ޣ�</td>
                                          <td width="76%" height="25"> &nbsp; 
                                            <SELECT size=1 name=Ȩ��ѡ�� >
                                              <OPTION value="" selected>��������Ȩ����ѡ��</OPTION>
<OPTION value=��������Ա>��������Ա</OPTION>
 <OPTION value=�̻����Ա>�̻����Ա</OPTION>                                             
                                            </SELECT>
<tr> 
                                          <td width="24%" height="25" align="right">�����̻᣺</td>
                                          <td width="76%" height="25"> &nbsp; 
                                            <SELECT size=2 name=�����̻� >
                                              <OPTION value="" selected>���������б���ѡ��</OPTION>
<%

  while not rs1.Eof
response.write"<OPTION value='"&rs1(1)&"'>"&rs1(1)&"</OPTION>"  
rs1.movenext  
wend
%>
                                              
                                            </SELECT>
                                            <font color="#EC5106"></font> 
                                          </td>
                                        </tr>
 <tr> 
                                            <font color="#EC5106"></font> 
                                          </td>
                                        </tr>
 <tr> 
      <tr onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
        <td height="25" class="td">&nbsp;</td>
        <td class="td"><input type="submit" name="button" id="button" value="�ύ����"  class="button"/></td>
      </tr>
    </table></form>
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
sql="select * from admin_user where id="&id
rs.open sql,conn,2,3
rs.delete
rs.update
Response.Write "<script>alert('ɾ���ɹ���');window.location.href='admin_manage.asp';</script>"
end if 
%>
<%
if request("act")="add" then
dim u,i,letters
set rs=server.createobject("adodb.recordset")
sql="select * from admin_user"
rs.open sql,conn,1,3
admin=request.form("admin")
password=request.form("password")
password3=request.form("password3")
quanxian=request.form("Ȩ��ѡ��")
shanghui=request.form("�����̻�")
if admin=""  then 
response.Write("<script language=javascript>alert('�����ʺŲ���Ϊ��!');history.go(-1)</script>") 
response.end 
end if
letters="0123456789abcdefghijklmnopqrstuvwxyz" 
admin=Lcase(trim(Request.Form("admin"))) 
for i=1 to len(admin) 
u=mid(admin,i,1) 
if Instr(letters,u)=0 then 
response.write "<script>alert('�����ʺ�ֻ������ĸ�����ּ��»������!');history.go(-1);</script>" 
response.end 
end if 
next 
if password=""  then 
response.Write("<script language=javascript>alert('��¼���벻��Ϊ��!');history.go(-1)</script>") 
response.end 
end if
rs.addnew
if request.Form("password")<>request.Form("password3") then 
Response.Write "<script>alert('�������벻һ�£����������룡');history.go(-1);</script>" 
response.end
end if
rs("admin")=admin
rs("password")=md5(request.form("password"))
if quanxian='��������Ա' then
rs("Ȩ��")=1
else 
rs("Ȩ��")=2
end if
rs("�̻�")=shanghui
rs.update
rs.close
set rs=nothing
conn.close
set rs=nothing
Response.Write "<script>alert('��ϲ�㣬����Ա���ӳɹ�������������ӣ�');window.location.href='admin_manage.asp';</script>" 
end if
%>