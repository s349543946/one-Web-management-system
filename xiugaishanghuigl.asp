<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Xyconn.asp"-->
<!--#include file="Inc/xycms.asp" -->
<!--#include file="Inc/config.asp" -->
<!--#include file="page.asp" -->
<!-- #include file="conn.asp" -->

<%
sql="select * from admin_user where id="&session("admin")&""
   set xy=server.createobject("adodb.recordset") 
   xy.open sql,conn,1,1 
qx=xy("Ȩ��")
sh=xy("�̻�")

set rs=server.createobject("adodb.recordset") 
exec="select * from shanghui  ORDER BY ID "
rs.open exec,conn,1,1



%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />


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
<style type="text/css">
table{border-collapse: collapse;
    border-style: solid;
}
table td{border:solid 1px #333,padding:2px}

</style>
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
<script type="text/javascript"> 
var idTmr = ""; 
function killExcelProcess(appExcel_){ 
appExcel_.Quit(); 
appExcel_ = null; 
idTmr = window.setInterval("Cleanup();",1); 
} 

//������excel������tableidΪJSPҳ����Ҫ������table��id����Ҫ����IE�İ�ȫ���ã�ActiveX���򿪣�������ǲ���ʹ�ã��ٷ�������С�regsvr32 scrrun.dll�� 
function exportToExcel(tableid,notitleandsearch){ 
try { 
clipboardData.setData('Text',''); 
var appExcel = new ActiveXObject("Excel.Application"); 

killExcelProcess(appExcel); 
appExcel.workbooks.add; 

//���� 
if (notitleandsearch==null||notitleandsearch==false){ 
var elTable = document.getElementById('div_title'); 
var oRangeRef = document.body.createTextRange(); 
oRangeRef.moveToElementText(elTable); 
oRangeRef.execCommand( "Copy" ); 
appExcel.ActiveSheet.Cells(1,3).select(); 
appExcel.ActiveSheet.Paste(); 

clipboardData.setData('Text',''); 
appExcel.ActiveSheet.Cells(2,1).select(); 
appExcel.ActiveSheet.Paste(); 
} 

var elTable1 = document.getElementById(tableid); 
var oRangeRef1 = document.body.createTextRange(); 
oRangeRef1.moveToElementText(elTable1); 
oRangeRef1.execCommand( "Copy" ); 

appExcel.WorkSheets(1).Activate; 
if (notitleandsearch==null||notitleandsearch==false){ 
appExcel.ActiveSheet.Cells(3,1).select(); 
}else{ 
appExcel.ActiveSheet.Cells(1,1).select(); 
} 
appExcel.WorkSheets(1).Activate; 
appExcel.ActiveSheet.Paste(); 
appExcel.Visible = true; 

} catch(e) { 
alert("��ȷ��IE��ȫ���ã�ActiveX�����ã�"); 
return false; 
} 
clipboardData.setData('text',''); 
} 
</script> 

<body>

<div id="contain">
 
  <div id="dc">
    <div class="dc_l">
      <div class="dc_l_t"></div>
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
      <div class="dc_r_t"></div>
      <div class="dc_r_c">
        <div class="dc_r_c_c">
          <div class="nlist">
 <head><title>��ѯ���</title></head> 
<body bgcolor="#ffffff"> 
<p align="center">

<form name="form1" method="post" action="xiugaishanghui--.asp"> ������Ҫ�޸��̻�����֣� <input type="text" name="id">  
<input type="submit" name="submit" value="�ύ"> <br> </form>

<div id='div_title' > 

</div> 
<div id="printPage" align="center"><center>

<table id = "testList" bordercolor="#000000" border=1><tr>
<%




%>
</tr>


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
k=1
while k<x+1



if i=2 or i=4 or i=6 or i=8 then
dsql1="select * from wenshangxinxi where ID= "&rs(i)&" "
   set rsc1=server.createobject("adodb.recordset") 
   rsc1.open dsql1,conn,1,1 
bj=rsc1("����")
if "&bj&"<>"" then

else 
response.write("<td>"&rs(i)&"</td>")
end if
bj=""
set rsc1=nothing
else
response.write("<td>"&rs(i)&"</td>")
end if
next


k=k+1
wend
%>

</table>
</center>
  
<% call PageControl(iCount,maxpage,page,"border=0 align=center","<p align=center>")
rs.close
set rs = nothing 
 %> 
<% 
conn.close 
set conn = nothing 
%> 


</body>
            <div class="clear"></div>
        
          </div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>

</div>
</body>
</html>
