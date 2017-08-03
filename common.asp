<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="xyconn.asp"-->
<!--#include file="Inc/xycms.asp" -->
<!--#include file="Inc/config.asp" -->

<%
id=request.QueryString("id")
if id="" or not isnumeric(id) then
response.write "<script>alert('警告!非法参数！');window.location.href='index.html';</script>" 
Response.End()
end if
set rs=server.createobject("adodb.recordset") 
exec="select * from common where id="&id
rs.open exec,conn,1,1
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/css.css" type="text/css" rel="stylesheet" />
<title><%=rs("title")%><%=wzname%></title>

<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/slides.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<SCRIPT src="js/MSClass.js" type=text/javascript></SCRIPT>

<!--[if lte IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]-->
</head>
<body>
<div id="contain">
  <!--#include file="head.asp"-->
  <div id="dc">
    <div class="dc_l">
      <div class="dc_l_t"><div class="title"><%=rs("title")%></div></div>
      <!--
      <div class="dc_l_c">
        <div class="dc_l_c_c">
          <ul>
            <% call xycms_list("common","common")%>
          </ul>
        </div>
      </div>
      -->
    </div>
    <div class="dc_r">
      <div class="dc_r_t"><div class="title">当前位置：<a href="index.html" target="_self">首页</a> > <%=rs("title")%></div></div>
      <div class="dc_r_c">
        <div class="dc_r_c_c">
          <div class="title"><%=rs("title")%></div>
          <div class="show">
           <%=rs("body")%>
        <% rs.close
		set rs=nothing
		%>
          </div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <!--#include file="foot.asp"-->
</div>
</body>
</html>
