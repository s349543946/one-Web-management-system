<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp"--> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/admin.css" type="text/css" rel="stylesheet" />
<title>top</title>
</head>
<body>
<% sql="select * from admin_user where id="&session("admin")&""
   set xy=server.createobject("adodb.recordset") 
   xy.open sql,conn,1,1 
qx=xy("权限")
%> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="92" background="images/main_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="24" background="images/main_03.gif">&nbsp;</td>
            <td width="505" background="images/main_04.gif">&nbsp;</td>
            <td>&nbsp;</td>
            <td width="21"><img src="images/main_07.gif" width="21" height="24"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="80"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="80" background="images/main_logo.png">&nbsp;</td>
            <td valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="77%" height="25" valign="bottom"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="50" height="19"><div align="center"><a href="../index.asp" target="_blank"><img src="images/main_12.gif" width="49" height="19" border="0"></a></div></td>
                    <td width="50"><div align="center"><a href="LoginOut.asp" target="_parent"><img src="images/main_20.gif" width="48" height="19" border="0"></a></div></td>
                    <td width="26"><div align="center"><img src="images/main_21.gif" width="26" height="19"></div></td>
                    <td width="1"><div align="center"></div></td>

                    <td width="505">
<%if qx="1" then%><span class="h_sf">管理员身份：超级管理员 </span>
<%else%>
<span class="h_sf">管理员身份：商会管理员 </span>
<%end if%>
</td>

       </tr>
                </table></td>
                <td width="220" valign="bottom"  nowrap="nowrap"><div align="right"></div></td>
              </tr>
            </table></td>
            <td width="21"><img src="images/main_11.gif" width="21" height="80"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="8" style=" line-height:8px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" background="images/main_29.gif" style=" line-height:8px;">&nbsp;</td>
            <td width="505" background="images/main_30.gif" style=" line-height:8px;">&nbsp;</td>
            <td style=" line-height:8px;">&nbsp;</td>
            <td width="21" style=" line-height:8px;"><img src="images/main_31.gif" width="21" height="8"></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="32" background="images/main_36.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="197" height="32" background="images/main_32.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="20%"  height="32">&nbsp;</td>
            <td width="59%" valign="center"><div class="h_t1">当前用户：<%=xy("admin")%></div></td>
            <td width="21%">&nbsp;</td>
          </tr>
        </table></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="5" height="32">&nbsp;</td>
            <td width="63"><table width="68" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="24" class="h_nav_t" onMouseOver="this.style.backgroundImage='url(images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" ><a href="admin_setup.asp" target="main">系统设置</a></div></td>
              </tr>
            </table></td>
            <td width="3"><img src="images/main_34.gif" width="3" height="32"></td>
            <td width="90"><table width="90" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="24" class="h_nav_t" onMouseOver="this.style.backgroundImage='url(images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" ><a href="manage_video.asp" target="main">首页视频管理</a></div></td>
              </tr>
            </table></td>
            <td width="3"><img src="images/main_34.gif" width="3" height="32"></td>
            <td width="63"><table width="68" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="24" class="h_nav_t" onMouseOver="this.style.backgroundImage='url(images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" ><a href="manage_sql.asp" target="main">安全管理</a></div></td>
              </tr>
            </table></td>
            <td width="3"><img src="images/main_34.gif" width="3" height="32"></td>
            <td width="63"><table width="68" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="24" class="h_nav_t" onMouseOver="this.style.backgroundImage='url(images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" ><a href="manage_sql.asp?action=config" target="main">安全设置</a></div></td>
              </tr>
            </table></td>
            <td width="3"><img src="images/main_34.gif" width="3" height="32"></td>
            <td width="94"><table width="94" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="24" class="h_nav_t" onMouseOver="this.style.backgroundImage='url(images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" ><a href="manage_menu.asp" target="main">首页菜单管理</a></div></td>
              </tr>
            </table></td>
            <td width="3"><img src="images/main_34.gif" width="3" height="32"></td>
            <td width="80"><table width="80" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="24" class="h_nav_t" onMouseOver="this.style.backgroundImage='url(images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center"><a href="admin_manage.asp" target="main">管理员管理</a></div></td>
              </tr>
            </table></td>
            <td width="3"><img src="images/main_34.gif" width="3" height="32"></td>
            <td width="67"><table width="62" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="24" class="h_nav_t" onMouseOver="this.style.backgroundImage='url(images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">&nbsp;</td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="21"><img src="images/main_37.gif" width="21" height="32"></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
