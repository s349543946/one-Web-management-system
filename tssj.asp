<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Xyconn.asp"-->
<!--#include file="Inc/xycms.asp" -->
<!--#include file="Inc/config.asp" -->
<!--#include file="page.asp" -->

<%
id=request.QueryString("id")
if  not isnumeric(id) then
Response.Write "<script>alert('警告！参数错误！');history.go(-1);</script>" 
Response.End()
end if
set rs=server.createobject("adodb.recordset") 
if id="" then
exec="select * from news order by id desc"
else
exec="select * from news where ssfl="&id&" order by id desc"
end if
rs.open exec,conn,1,1
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/css.css" type="text/css" rel="stylesheet" />
<title><%if id="" then%>泰顺商机<% else %><%=xycms_newstitle(id)%><% end if%><%=wzname%></title>
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
      <div class="dc_l_t"><div class="title">泰顺商机</div></div>
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
      <div class="dc_r_t"><div class="title">当前位置：<a href="index.html" target="_self">首页</a> > <%if id="" then%>泰顺商机<% else %><%=xycms_newstitle(id)%><% end if%></div></div>
      <div class="dc_r_c">
        <div class="dc_r_c_c">
          <div class="nlist">
            <ul>
              <% if rs.eof then
		     response.Write("<li>暂无该类信息记录！</li>")
			 else
			 rs.PageSize =20
             iCount=rs.RecordCount 
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
             end if
             For i=1 To x %>
            <li><span><%=formatdatetime(rs("data"),2)%></span><a href="news_detail.asp?id=<%=rs("id")%>" target="_self" title="<%=rs("title")%>"><%=rs("title")%></a></li>
          <% rs.movenext
                next
		   %>
            </ul>
            <div class="clear"></div>
            <ul style="padding:10px 0px;">
            <%call PageControl(iCount,maxpage,page,"border=0 align=center","<p align=center>")
                rs.close
                set rs=nothing%>
          </ul>
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
