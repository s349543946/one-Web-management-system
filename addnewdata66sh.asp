<!-- #include file="conn.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>成功</title>
</head>
<body>
<%
ac=request.QueryString("ac")
msg="注册错误信息："

if request.Form("公司名称")="" then
msg=msg&"<br>"&"*公司名称不能为空"
end if
if request.Form("quyu_class_id")="" then
msg=msg&"<br>"&"*省份不能为空"
end if
if request.Form("quyu_nclass_id")="" then
msg=msg&"<br>"&"*城市不能为空"
end if
if request.Form("通讯地址")="" then
msg=msg&"<br>"&"*通讯地址不能为空"
end if
if request.Form("主负责人")="" then
msg=msg&"<br>"&"*主负责人不能为空"
end if
if request.Form("主负责人是否是名人")="" then
msg=msg&"<br>"&"*主负责人是否是名人不能为空"
end if
if strcomp(msg,"注册错误信息：")>0 then
response.Redirect("add_common11sh.asp?msg=" & msg)
end if
if ac="adduser" then
set rsc=server.createobject("adodb.recordset")
sql="select * from info where username='"&request.Form("username")&"'"
rsc.open sql,conn,1,1
ck=rsc("username")
set rsc=nothing

set rsc1=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&request.Form("主负责人")&"'"
rsc1.open sql,conn,1,1
zfzr=rsc1("姓名")
zid=rsc1("ID")
zmr=rsc1("是否是名人")
set rsc1=nothing

set rsc2=server.createobject("adodb.recordset")
sql="select * from wenshangxinxi where 姓名='"&request.Form("副负责人")&"'"
rsc2.open sql,conn,1,1
ffzr=rsc2("姓名")
fid=rsc2("ID")
fmr=rsc2("是否是名人")
set rsc2=nothing

set rsc3=server.createobject("adodb.recordset")
sql="select * from province where 省份id='"&request.Form("quyu_class_id")&"'"
rsc3.open sql,conn,1,1
shengfen=rsc3("省份")
set rsc3=nothing

set rsc4=server.createobject("adodb.recordset")
sql="select * from province_city where 城市id='"&request.Form("quyu_nclass_id")&"'"
rsc4.open sql,conn,1,1
chengshi=rsc4("城市")
set rsc4=nothing

set rsc5=server.createobject("adodb.recordset")
sql="select * from hangyedalei where 行业大类id='"&request.Form("tradeid")&"'"
rsc5.open sql,conn,1,1
dalei=rsc5("行业大类")
set rsc5=nothing

set rsc6=server.createobject("adodb.recordset")
sql="select * from hangyexiaolei where 行业小类id='"&request.Form("smid")&"'"
rsc6.open sql,conn,1,1
xiaolei=rsc6("行业小类")
set rsc6=nothing






if zfzr="" or zmr<>request.Form("主负责人是否是名人") then
dsql="select * from wenshangxinxi where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("姓名")=request.Form("主负责人")
rs("是否是名人")=request.Form("主负责人是否是名人")
rs("手机")=request.Form("主负责人手机")
rs("性别")=request.Form("主负责人性别")
rs("所在区域")=request.Form("主负责人住址")
rs("籍贯")="浙江"+"温州"+"泰顺"+request.Form("主负责人籍贯")
rs("qq")=request.Form("zqq")
rs("身份证")=request.Form("主负责人身份证")
rs("工作单位")=request.Form("公司名称")
if request.Form("主负责人工作职务")<>"" then
rs("工作职务")=request.Form("公司名称")+request.Form("主负责人工作职务")
end if
rs("所属商会")=request.Form("所属商会")
if request.Form("主负责人商会职务")<>"" then
rs("商会职务")=request.Form("所属商会")+request.Form("主负责人商会职务")
end if
rs("传真")=request.Form("主负责人传真")
rs("邮编")=request.Form("主负责人邮编")
rs("邮箱")=request.Form("主负责人邮箱")
zid=rs("ID")
rs.update
set rs=nothing
end if

if zfzr<>"" and zmr=request.Form("主负责人是否是名人") then
set rsc6=server.createobject("adodb.recordset")
str=request.Form("所属商会")
sql="select * from wenshangxinxi where 姓名='"&request.Form("主负责人")&"' and 所属商会 like '%"&str&"%'"
rsc6.open sql,conn,1,1
sh=rsc6("所属商会")
set rsc6=nothing

set rsc7=server.createobject("adodb.recordset")
str1=request.Form("公司名称")
sql="select * from wenshangxinxi where 姓名='"&request.Form("主负责人")&"' and 工作单位 like '%"&str1&"%'"
rsc7.open sql,conn,1,1
gz=rsc7("工作单位")
set rsc7=nothing

dsql="select * from wenshangxinxi where 姓名='"&request.Form("主负责人")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
if gz="" then
rs("工作单位")=rs("工作单位")+"、"+request.Form("公司名称")
if request.Form("主负责人工作职务")<>"" then
rs("工作职务")=rs("工作职务")+"、"+request.Form("公司名称")+request.Form("主负责人工作职务")
end if
end if
if sh="" then
if rs("所属商会")<>""then
if request.Form("所属商会")<>"" then
rs("所属商会")=rs("所属商会")+"、"+request.Form("所属商会")
end if
if request.Form("主负责人商会职务")<>"" then
rs("商会职务")=rs("商会职务")+"、"+request.Form("所属商会")+request.Form("主负责人商会职务")
end if
end if
if rs("所属商会")="" then
rs("所属商会")=+request.Form("所属商会")
if request.Form("主负责人商会职务")<>"" then
rs("商会职务")=request.Form("所属商会")+request.Form("主负责人商会职务")
end if
end if
end if

rs.update
set rs=nothing
end if

if ffzr="" or fmr<>request.Form("副负责人是否是名人") then
dsql="select * from wenshangxinxi where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
if request.Form("副负责人")<>"" then
rs.addnew
rs("姓名")=request.Form("副负责人")
rs("手机")=request.Form("副负责人手机")
rs("性别")=request.Form("副负责人性别")
rs("所在区域")=request.Form("副负责人住址")
rs("籍贯")="浙江"+"温州"+"泰顺"+request.Form("副负责人籍贯")
rs("qq")=request.Form("fqq")
rs("身份证")=request.Form("副负责人身份证")
rs("工作单位")=request.Form("公司名称")
if request.Form("副负责人工作职务")<>"" then
rs("工作职务")=request.Form("公司名称")+request.Form("副负责人工作职务")
end if
rs("所属商会")=request.Form("所属商会")
if request.Form("副负责人工作职务")<>"" then
rs("商会职务")=request.Form("所属商会")+request.Form("副负责人商会职务")
end if
rs("传真")=request.Form("副负责人传真")
rs("邮编")=request.Form("副负责人邮编")
rs("邮箱")=request.Form("副负责人邮箱")
fid=rs("ID")
rs.update
end if
set rs=nothing
end if

if ffzr<>"" and fmr=request.Form("副负责人是否是名人") then
set rsc8=server.createobject("adodb.recordset")
str2=request.Form("所属商会")
sql="select * from wenshangxinxi where 姓名='"&request.Form("副负责人")&"' and 所属商会 like '%"&str2&"%'"
rsc8.open sql,conn,1,1
sh1=rsc8("所属商会")
set rsc8=nothing

set rsc9=server.createobject("adodb.recordset")
str3=request.Form("公司名称")
sql="select * from wenshangxinxi where 姓名='"&request.Form("副负责人")&"' and 工作单位 like '%"&str3&"%'"
rsc9.open sql,conn,1,1
gz1=rsc9("工作单位")
set rsc9=nothing

dsql="select * from wenshangxinxi where 姓名='"&request.Form("副负责人")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
if gz1="" then
rs("工作单位")=rs("工作单位")+"、"+request.Form("公司名称")
if request.Form("副负责人工作职务")<>"" then
rs("工作职务")=rs("工作职务")+request.Form("公司名称")+request.Form("副负责人工作职务")
end if
end if
if sh1="" then
if rs("所属商会")<>""then
if request.Form("所属商会")<>"" then
rs("所属商会")=rs("所属商会")+"、"+request.Form("所属商会")
end if
if request.Form("副负责人商会职务")<>"" then
rs("商会职务")=rs("商会职务")+"、"+request.Form("所属商会")+request.Form("副负责人商会职务")
end if
end if
if rs("所属商会")="" then
rs("所属商会")=+request.Form("所属商会")
if request.Form("副负责人商会职务")<>"" then
rs("商会职务")=request.Form("所属商会")+request.Form("副负责人商会职务")
end if
end if
end if
rs.update
set rs=nothing
end if

dsql1="select * from company_info where company_id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql1,conn,1,3
rs.addnew
rs("username")=request.Form("username")
rs("公司名称")=request.Form("公司名称")
rs("行业大类")=dalei
rs("行业小类")=xiaolei
rs("企业性质")=request.Form("企业性质")
rs("注册资金(亿元)")=request.Form("注册资金")
rs("市场总数")=request.Form("市场总数")
rs("员工人数")=request.Form("员工人数")
rs("省份")=shengfen
rs("城市")=chengshi
rs("主负责人")=zid
rs("副负责人")=fid
rs("占地面积")=request.Form("占地面积")
rs("标记")=request.Form("标记")
rs("成立日期")=request.Form("成立日期")
rs("通讯地址")=shengfen+chengshi+request.Form("通讯地址")
rs("公司联系电话")=request.Form("公司联系电话")
rs("邮政编码")=request.Form("邮政编码")
rs("所属商会")=request.Form("所属商会")
rs("网址")=request.Form("网址")
rs.update
set rs=nothing

if request.Form("主负责人商会职务")="会长" then
dsql="select * from shanghui where 商会='"&request.Form("所属商会")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("会长")=zid
rs("会长电话")=request.Form("主负责人手机")
rs.update
set rs=nothing
end if

if request.Form("主负责人商会职务")="秘书长" then
dsql="select * from shanghui where 商会='"&request.Form("所属商会")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("秘书长")=zid
rs("秘书长电话")=request.Form("主负责人手机")
rs.update
set rs=nothing
end if

if request.Form("主负责人商会职务")="副秘书长" then
dsql="select * from shanghui where 商会='"&request.Form("所属商会")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("副秘书长")=zid
rs("副秘书长电话")=request.Form("主负责人手机")
rs.update
set rs=nothing
end if

if request.Form("主负责人商会职务")="常务副会长" then
dsql="select * from shanghui where 商会='"&request.Form("所属商会")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("常务副会长")=zid
rs("常务副会长电话")=request.Form("主负责人手机")
rs.update
set rs=nothing
end if

if request.Form("副负责人商会职务")="会长" then
dsql="select * from shanghui where 商会='"&request.Form("所属商会")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("会长")=fid
rs("会长电话")=request.Form("副负责人手机")
rs.update
set rs=nothing
end if

if request.Form("副负责人商会职务")="秘书长" then
dsql="select * from shanghui where 商会='"&request.Form("所属商会")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("秘书长")=fid
rs("秘书长长电话")=request.Form("副负责人手机")
rs.update
set rs=nothing
end if

if request.Form("副负责人商会职务")="副秘书长" then
dsql="select * from shanghui where 商会='"&request.Form("所属商会")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("副秘书长")=fid
rs("副秘书长长电话")=request.Form("副负责人手机")
rs.update
set rs=nothing
end if

if request.Form("副负责人商会职务")="常务副会长" then
dsql="select * from shanghui where 商会='"&request.Form("所属商会")&"'"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs("常务副会长")=fid
rs("常务副会长电话")=request.Form("副负责人手机")
rs.update
set rs=nothing
end if
%>
<center>
添加成功
</center>
<%
end if
%>
</body>
</html>