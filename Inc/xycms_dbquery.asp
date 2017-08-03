<%
'=================================================
'XYCMS企业建站系统 版权所有 技术支持QQ：364500483
'=================================================
if on_run=1 then
response.Write off_dc
response.End()
end if

'=================================================
'函数名：xycms_menu
'功能：导航菜单内容调用
'调用参数：xyview,是否显示；xytid,菜单位置
'=================================================
function xycms_menu(xyview)
dim menu
set menu=server.CreateObject("adodb.recordset")
menu.open "select * from menu where view="&xyview&" and Pid=0 order by pl_id asc",conn,1,1
while not menu.eof %>
<li><a href="<%=menu("url")%>" target="<%=menu("open_m")%>" title="<%=menu("title")%>"><%=menu("title")%></a>
<% set menu1=server.CreateObject("adodb.recordset")
  menu1.open "select * from menu where view=1 and Pid="&menu("id")&" order by pl_id asc",conn,1,1
  if menu1.eof or menu1.bof then
  response.Write("</li>")
  else
   %>
<ul>
  <% do while not menu1.eof %>
  <li><a href="<%=menu1("url")%>" target="_self"><%=menu1("title")%></a></li>
<%
menu1.movenext
loop
%>
</ul>
<% end if%>
</li>
<div class="n"></div>
<% menu.movenext
wend
menu1.close
set menu1=nothing
menu.close
set menu=nothing
end function

function xycms_focus() %>
	<% Set xy_rss = server.CreateObject("adodb.recordset")
          xy_sqll = "select * from [jdt] order by pl_id desc"
       xy_rss.Open xy_sqll, conn, 1, 1
       do while not xy_rss.EOF %>
       <li><a href="<%=xy_rss("link")%>" target="_blank"><img src="<%=xy_rss("img")%>" alt="<%=xy_rss("title")%>" /></a></li>
       <%
       xy_rss.moveNext
       loop
       xy_rss.Close
end function

'=================================
sub xycms_list(xytable,xyurl)
set list=server.CreateObject("adodb.recordset")
list.open "select * from ["&xytable&"] order by pl_id asc",conn,1,1
if list.eof and list.bof then
response.Write("&nbsp;暂无记录 !")
end if
while not list.eof
response.Write("<li><a href="""&xyurl&".asp?id="&list("id")&""" title=""" & list("title") &""">"  & list("title") & "</a></li>")
list.movenext
wend
list.close
set list=nothing
end sub

sub xycms_toptitle(xytable,xyurl)
set toptitle=server.CreateObject("adodb.recordset")
toptitle.open "select * from ["&xytable&"] order by id desc",conn,1,1
if toptitle.eof and toptitle.bof then
response.Write("&nbsp;暂无记录 !")
end if
while not toptitle.eof
response.Write("<li>· <a href="""&xyurl&"_detail.asp?id="&toptitle("id")&""" title=""" & toptitle("title") &""">"  & strvalue(toptitle("title"),28) & "</a></li>")
toptitle.movenext
wend
toptitle.close
set toptitle=nothing
end sub

function xycms_video()
set rsv=server.CreateObject("adodb.recordset")
sql="select * from video where id=1"
rsv.open sql,conn,1,1
if not rsv.eof then
%>
<EMBED align="middle" src="<%=rsv("v_url")%>" width="218" height="177" type="video/x-ms-wmv" autostart="true"></EMBED>
<%
end if
rsv.close
set rsv=nothing
end function
'=================================================
'函数名：xycms_news
'功能：新闻内容
'调用参数：xytop,调用条数；xytitle,标题字数；xyfl，新闻分类；xytj，是否推荐；xyorder，排列顺序
'=================================================
function xycms_news(xytop,xytitle,xyfl,xyorder)
Dim xycms_fl,xycms_order
select case xyfl
       case 0
	   xycms_fl=""
	   case else
	   xycms_fl="and ssfl="&xyfl&""
end select
select case xyorder
       case 0
	   xycms_order="order by id desc"
	   case 1
	   xycms_order="order by hit desc"
	   case else
	   xycms_order=""
end select
set news=server.CreateObject("adodb.recordset")
sql="select top "&xytop&" * from [news] where passed=1 "&xycms_fl&" "&xycms_order&""
news.open sql,conn,1,1
if news.eof and news.bof then
response.Write("&nbsp;暂无该新闻内容 !")
else
while not news.eof
dim url,color
if IsNull(news("url")) or trim(news("url")&"")="" then
url="news_detail.asp?id="&news("id")&""
else
url=""&news("url")&""
end if
if IsNull(news("color")) or trim(news("color")&"")="" then
color="#5D5D5D"
else
color=""&news("color")&""
end if 
%>
<li><span><%=formatdatetime(news("data"),2)%></span><a href="<%=url%>" style="color:<%=color%>;" title="<%=news("title")%>"><%=left(news("title"),xytitle)%></a></li>
<% news.movenext
wend
news.close
set news=nothing
end if
end function 

function xycms_newss(xytop,xytitle,xyfl,xyorder)
Dim xycms_fl,xycms_order
select case xyfl
       case 0
	   xycms_fl=""
	   case else
	   xycms_fl="and ssfl="&xyfl&""
end select
select case xyorder
       case 0
	   xycms_order="order by id desc"
	   case 1
	   xycms_order="order by hit desc"
	   case else
	   xycms_order=""
end select
set newss=server.CreateObject("adodb.recordset")
sql="select top "&xytop&" * from [news] where passed=1 "&xycms_fl&" "&xycms_order&""
newss.open sql,conn,1,1
if newss.eof and newss.bof then
response.Write("&nbsp;暂无该新闻内容 !")
else
while not newss.eof
dim url,color
if IsNull(newss("url")) or trim(newss("url")&"")="" then
url="news_detail.asp?id="&newss("id")&""
else
url=""&newss("url")&""
end if
if IsNull(newss("color")) or trim(newss("color")&"")="" then
color="#5D5D5D"
else
color=""&newss("color")&""
end if 
%>
<li><a href="<%=url%>" style="color:<%=color%>;" title="<%=newss("title")%>"><%=left(newss("title"),xytitle)%></a></li>
<% newss.movenext
wend
newss.close
set newss=nothing
end if
end function 

function xycms_newstitle(id)
 set newstitle=server.createobject("adodb.recordset") 
   exec="select * from news_fl where id="&id&" order by id desc  "
   newstitle.open exec,conn,1,1 
   if newstitle.eof and newstitle.bof then
   response.Write("&nbsp;")
   else
   response.Write(""&newstitle("title")&"")
   newstitle.close
   set newstitle=nothing
   end if 
end function

'=================================================
'函数名：xycms_newsfllist
'功能：新闻分类
'=================================================
function dbquerylist()
set dbquery=server.CreateObject("adodb.recordset")
dbquery.open "select * from DBQuery_subdir order by pl_id asc",conn,1,1
if dbquery.eof and dbquery.bof then
response.Write("&nbsp;暂无信息记录 !")
end if

response.Write("<li><a href=""inCompany.asp?id="&dbquery("id")&""" title=""" & dbquery("title") &""">"  & dbquery("title") & "</a> </li>")

dbquery.close
set dbquery=nothing
end function

function dbquerylist02()
set dbquery=server.CreateObject("adodb.recordset")
dbquery.open "select * from DBQuery_subdir where pl_id = 2",conn,1,1
if dbquery.eof and dbquery.bof then
response.Write("&nbsp;暂无信息记录 !")
end if

response.Write("<li><a href=""outCompany.asp?id="&dbquery("id")&""" title=""" & dbquery("title") &""">"  & dbquery("title") & "</a> </li>")

dbquery.close
set dbquery=nothing
end function

function dbquerylist03()
set dbquery=server.CreateObject("adodb.recordset")
dbquery.open "select * from DBQuery_subdir where pl_id = 3",conn,1,1
if dbquery.eof and dbquery.bof then
response.Write("&nbsp;暂无信息记录 !")
end if

response.Write("<li><a href=""impoIndustry.asp?id="&dbquery("id")&""" title=""" & dbquery("title") &""">"  & dbquery("title") & "</a> </li>")

dbquery.close
set dbquery=nothing
end function
'=================================================
'函数名：xycms_contact
'=================================================
function xycms_contact()%>
<li>联系电话：<%=telnum%></li>
<li>联系传真：<%=faxnum%></li>
<li>联系邮箱：<%=email%></li>
<li>地 址：<%=address%></li>
<% end function 

function xycms_link()
set link=server.CreateObject("adodb.recordset")
link.open "select * from [link] order by pl_id asc",conn,1,1
if link.eof and link.bof then
response.Write("&nbsp;暂无记录 !")
end if
while not link.eof
response.Write("<a href="""&link("url")&""" title=""" & link("title") &""" target=""_blank"">"&link("title")&"</a>")
link.movenext
wend
link.close
set link=nothing
end function

'=================================================
'=================================================


function xycms_proimg()
set proimg=server.createobject("adodb.recordset") 
exec="select * from [xy_vip] where tuijian=1 order by id desc  " 
proimg.open exec,conn,1,1 
if proimg.eof and proimg.bof then
response.Write("<li>暂无最新信息!</li>")
else
do while not proimg.eof
%>
<td><p><a href="vip_detail.asp?id=<%=proimg("id")%>" target="_blank"><img src="<%=proimg("img")%>" alt="<%=proimg("title")%>" /></a></p><p><a href="vip_detail.asp?id=<%=proimg("id")%>" target="_blank"><%=proimg("title")%></a></p></td>
<%
proimg.movenext 
loop 
end if
proimg.close
set proimg=nothing
end function

%>
