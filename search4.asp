<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Xyconn.asp"-->
<!--#include file="Inc/xycms.asp" -->
<!--#include file="Inc/config.asp" -->
<!--#include file="page.asp" -->
<!-- #include file="conn.asp" -->

<%

set rs=server.createobject("adodb.recordset") 
str=request.form("企业名称")
str1=request.form("企业类型")
exec="select * from company_info where  公司名称 like '%"&str&"%' and (行业大类  like '%"&str1&"%' or 行业小类  like '%"&str1&"%') "
rs.open exec,conn,1,1
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/css.css" type="text/css" rel="stylesheet" />
<title><%if id="" then%>搜索结果<% else %><%=xycms_newstitle(id)%><% end if%><%=wzname%></title>
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

<script language="JavaScript">
        function printPage(obj) {
            if (obj == 'true') {
                var body = window.document.body.innerHTML;
                var printArea = window.document.getElementById("printPage").innerHTML;
                window.document.body.innerHTML = printArea;
              window.print("", 5000);
              window.document.body.innerHTML = body;
            }
        }
    </script>

<body>
<div id="contain">
  <!--#include file="head.asp"-->
  <div id="dc">
    <div class="dc_l">
      <div class="dc_l_t"><div class="title">搜索结果</div></div>
      <!-- 
      <div class="dc_l_c">
        <div class="dc_l_c_c">
          <ul>
            <%=xycms_newsfllist()%>
          </ul>
        </div>
      </div>
      <-->
    </div>
    <div class="dc_r">
      <div class="dc_r_t"><div class="title">当前位置：<a href="index.asp" target="_self">首页</a> > <%if id="" then%>搜索结果<% else %><%=xycms_newstitle(id)%><% end if%></div></div>
      <div class="dc_r_c">
        <div class="dc_r_c_c">
          <div class="nlist">
 <head><title>查询结果</title></head> 
<body bgcolor="#ffffff"> 
<p align="center"><br> 
"统计查询共有<% Response.Write(RS.RecordCount) %>条纪录</p><br> 
<div id="printPage" align="center"><center> 
<table border=1><tr>
<%
for i=0 to rs.fields.count-1
response.write("<td>"&rs(i).name&"</td>")
next
%>
</tr>
<%
rs.movefirst
while not rs.Eof
response.write("<tr>")
for i=0 to rs.fields.count-1
response.write("<td>"&rs(i)&"</td>")
next
response.write("</tr>")
rs.movenext
wend
%></table>
</center>

</div>

<% rs.close %> 
<% conn.close %> 
 <input type="button" onClick="printPage('true');return false;" value="打印">
</body>
            <div class="clear"></div>
        
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

