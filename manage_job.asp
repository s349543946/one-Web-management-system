<!--#include file="../xyconn.asp" -->
<!--#include file="htmlfunction.asp"-->
<!--#include file="seeion.asp"-->
<!--#include file="page.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ϣ����</title>
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
                <td width="95%" class="STYLE1"><span class="STYLE3">�㵱ǰ��λ��</span>��[��ҵ��Ƹ��Ϣ����]</td>
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
            <tr>
              <td bgcolor="#FFFFFF">
			  <% set rs=server.createobject("adodb.recordset") 
                   exec="select * from zpxx order by id desc" 
                   rs.open exec,conn,1,1 
                   if rs.eof then
                   response.write ("<div style=""padding:10px;"">������Ϣ��¼!</div>")
                   else
                   rs.PageSize =15 'ÿҳ��¼��������
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
      <tr onmouseout="style.backgroundColor='<%=bg%>'" bgcolor="<%=bg%>">
        <td colspan="2">
          <table width="100%" border="0" cellpadding="5" cellspacing="0">
            <tr>
              <td width="13%" class="td">JOB_ID�� <%=rs("id")%></td>
              <td width="33%" height="25" class="td"><a href="edit_job.asp?id=<%=rs("id")%>" style="color:#003399"><%=rs("title")%></a> </td>
              <td width="20%" class="td">����ʱ�䣺 <%=rs("data")%></td>
              <td width="13%" class="td">
                <input type="button" name="Submit3" value="�޸�" onclick="window.location.href='edit_job.asp?id=<%=rs("id")%>' "  class="button"/></td>
              <td width="21%" class="td">
                <input type="button" name="Submit" value="ɾ��" onclick="javascript:if(confirm('ȷ��ɾ����ɾ���󲻿ɻָ�!')){window.location.href='manage_job.asp?id=<%=rs("id")%>&amp;del=ok';}else{history.go(0);}"  class="button"/>    </td>
            </tr>
          </table>
          <% rs.movenext 
             if rs.eof then exit for 
             next 
             end if %>
        </td>
      </tr>
      <tr onmouseout="style.backgroundColor='<%=bg%>'" bgcolor="<%=bg%>">
        <td width="49%" height="30"><table width="100%" border="0" cellpadding="5" cellspacing="0">
          <tr>
            <td bgcolor="#F1F5F8">
			  <%call PageControl(iCount,maxpage,page,"border=0 align=right","<p align=right>")
              rs.close
              set rs=nothing %>
            </td>
          </tr>
        </table></td>
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
sql="select * from zpxx where id="&id
rs.open sql,conn,2,3
call Delhtml("job_detail"&rs("id")&".html")
rs.delete
rs.update
Response.Write "<script>alert('��Ϣɾ���ɹ���');window.location.href='manage_job.asp';</script>"
end if 
%>