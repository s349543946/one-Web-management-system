<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Xyconn.asp"-->
<!--#include file="Inc/xycms.asp" -->
<!--#include file="Inc/config.asp" -->
<!--#include file="page.asp" -->
<!-- #include file="conn.asp" -->

<%

set rs=server.createobject("adodb.recordset") 
str=request.form("��ҵ����")
str1=request.form("��ҵ����")
exec="select * from company_info where  ��˾���� like '%"&str&"%' and (��ҵ����  like '%"&str1&"%' or ��ҵС��  like '%"&str1&"%') ORDER BY company_id "
rs.open exec,conn,1,1
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/css.css" type="text/css" rel="stylesheet" />
<title><%if id="" then%>�������<% else %><%=xycms_newstitle(id)%><% end if%><%=wzname%></title>
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
  <!--#include file="head.asp"-->
  <div id="dc">
    <div class="dc_l">
      <div class="dc_l_t"><div class="title">�������</div></div>
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
      <div class="dc_r_t"><div class="title">��ǰλ�ã�<a href="index.asp" target="_self">��ҳ</a> > <%if id="" then%>�������<% else %><%=xycms_newstitle(id)%><% end if%></div></div>
      <div class="dc_r_c">
        <div class="dc_r_c_c">
          <div class="nlist">
 <head><title>��ѯ���</title></head> 
<body bgcolor="#ffffff"> 
<p align="center"><br> 
"ͳ�Ʋ�ѯ����<% Response.Write(RS.RecordCount) %>����¼</p><br> 

<button onclick="javascript:exportToExcel('testList','');">����</button><br> 
<div id='div_title' > 
<font color='black' size='4'><strong>��������</strong></font> 
</div> 
<div id="printPage" align="center" style="width:530px;margin:0 auto;"><center>
   <table class="tablebox" width="500" border="0" cellpadding="0" cellspacing="0">
<tbody id = "testList" bordercolor="#000000" border=1>
<tr>
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
%>

</table>
</center>
  <div style="height:30px;margin:20px 0 0 0;">
         <span id="spanFirst">��һҳ</span>
         <span id="spanPre">��һҳ</span>
         <span id="spanNext">��һҳ</span>
        <span id="spanLast">���һҳ</span>
         ��<span id="spanPageNum"></span>ҳ/��
         <span id="spanTotalPage"></span>ҳ
    </div>
</div>
<script type="text/javascript">
var theTable = document.getElementById("table2");
var totalPage = document.getElementById("spanTotalPage");
var pageNum = document.getElementById("spanPageNum");
var spanPre = document.getElementById("spanPre");
var spanNext = document.getElementById("spanNext");
var spanFirst = document.getElementById("spanFirst");
var spanLast = document.getElementById("spanLast");
var numberRowsInTable = theTable.rows.length;
var pageSize = 6;
var page = 1;
//��һҳ
function next() {
    hideTable();
    currentRow = pageSize * page;
    maxRow = currentRow + pageSize;
    if ( maxRow > numberRowsInTable )
    maxRow = numberRowsInTable;
    for ( var i = currentRow; i< maxRow; i++ ) {
        theTable.rows[i].style.display = '';
    }
        page++;
    if ( maxRow == numberRowsInTable ){
        nextText();
        lastText();
    }
    showPage();
    preLink();
    firstLink();
}

//��һҳ
function pre() {
    hideTable();
    page--;
    currentRow = pageSize * page;
    maxRow = currentRow - pageSize;
    if ( currentRow > numberRowsInTable )
    currentRow = numberRowsInTable;
    for ( var i = maxRow; i< currentRow; i++ ) {
        theTable.rows[i].style.display = '';
    }
    if ( maxRow == 0 ) {
        preText();
        firstText();
    }
    showPage();
    nextLink();
    lastLink();
}
//��һҳ
function first() {
    hideTable();
    page = 1;
    for ( var i = 0; i<pageSize; i++ ) {
        theTable.rows[i].style.display = '';
    }
    showPage();

    preText();
    nextLink();
    lastLink();
}

//���һҳ
function last() {
    hideTable();
    page = pageCount();
    currentRow = pageSize * (page - 1);
    for ( var i = currentRow; i<numberRowsInTable; i++ ) {
        theTable.rows[i].style.display = '';
    }
    showPage();
    
    preLink();
    nextText();
    firstLink();
}

function hideTable() {
    for ( var i = 0; i<numberRowsInTable; i++ ) {
    theTable.rows[i].style.display = 'none';
    }
}

function showPage() {
    pageNum.innerHTML = page;
}

//�ܹ�ҳ��
function pageCount() {
    var count = 0;
    if ( numberRowsInTable%pageSize != 0 ) count = 1; 
    return parseInt(numberRowsInTable/pageSize) + count;
}

//��ʾ����
function preLink() { spanPre.innerHTML = "<a href='javascript:pre();'>��һҳ</a>"; }
function preText() { spanPre.innerHTML = "��һҳ"; }

function nextLink() { spanNext.innerHTML = "<a href='javascript:next();'>��һҳ</a>"; }
function nextText() { spanNext.innerHTML = "��һҳ"; }

function firstLink() { spanFirst.innerHTML = "<a href='javascript:first();'>��һҳ</a>"; }
function firstText() { spanFirst.innerHTML = "��һҳ"; }

function lastLink() { spanLast.innerHTML = "<a href='javascript:last();'>���һҳ</a>"; }
function lastText() { spanLast.innerHTML = "���һҳ"; }

//���ر��
function hide() {
    for ( var i = pageSize; i<numberRowsInTable; i++ ) {
        theTable.rows[i].style.display = 'none';
    }

    totalPage.innerHTML = pageCount();
    pageNum.innerHTML = '1';
    
    nextLink();
    lastLink();
}

hide();
</script>
<% 
rs.close
set rs = nothing 
 %> 
<% 
conn.close 
set conn = nothing 
%> 

 <input type="button" onClick="printPage('true');return false;" value="��ӡ">
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

