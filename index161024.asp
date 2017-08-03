<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../xyconn.asp" --> 
<!--#include file="md5.Asp"-->
<%
if session("admin")<>"" then 
response.redirect "xycms.asp" 
else
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/admin.css" type="text/css" rel="stylesheet" />
<title>网站数据库管理系统后台登陆中心</title>
</head>
<body>
<div id="m_top"></div>
<div id="login">
  <div class="l_l">
    <div class="l_l_c">
      <div class="l_l_c_t">
 
      </div>
    </div>
  </div>
  <div class="l_c">
    <img src="images/l_line.gif" />
  </div>
  <div class="l_r">
    <div class="l_r_form">
      <form name="login" method="post" action="loginpass.asp" onSubmit="return checkform();">
      <table cellpadding="5" cellspacing="10" class="l_table">
        <tr>
          <td class="td1"><span>登录账号：</span></td>
          <td><input type="text" name="admin" class="u_input" onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='u_input';this.onmouseout=function(){this.className='u_input'};" onmousemove="this.className='input_on'" onmouseout="this.className='u_input'" /></td>
        </tr>
        <tr>
          <td class="td1"><span>登录密码：</span></td>
          <td><input type="password" name="password" class="u_input" onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='u_input';this.onmouseout=function(){this.className='u_input'};" onmousemove="this.className='input_on'" onmouseout="this.className='u_input'" /></td>
        </tr>
        <tr>
          <td class="td1"><span>验证码：</span></td>
          <td class="td4"><input name="verifycode" type="text" class="u_yzm" onfocus="this.className='u_yzm_f';this.onmouseout=''" onblur="this.className='u_yzm';this.onmouseout=function(){this.className='u_yzm'};" onmousemove="this.className='u_yzm_f'" onmouseout="this.className='u_yzm'" /> <img src="inc/code.asp?" onClick="this.src+=Math.random()" alt="图片看不清？点击重新得到验证码" style="cursor:hand;" height="20" /></td>
        </tr>
        <tr>
          <td colspan="2" class="td2"><input type="submit" value="提交" class="u_button" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重填" class="u_button" /></td>
        </tr>
        <tr>
          <td colspan="2" class="td3">友情提示：非网站管理员自觉离开此页面</td>
        </tr>
      </table>
      </form>
    </div>
  </div>
  <div class="clear"></div>
</div>
<div id="copy">
  <div class="copy"><a href="http://www.jsxyidc.com/" target="_blank">XXXXX</a> Copyright &copy; 2008-2013 All Rights Reserved</div>
</div>
</body>
</html>
