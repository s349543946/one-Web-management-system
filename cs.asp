
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"> 
<HTML> 
<HEAD> 
<TITLE>����Excel</TITLE> 
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
</HEAD> 

<BODY> 
<button onclick="javascript:exportToExcel('testList','');">����</button><br> 

<div id='div_title' > 
<font color='black' size='4'><strong>��������</strong></font> 
</div> 
<table id = "testList" bordercolor="#000000" border = "1"> 
<tr> 
<td>����</td> 
<td>����</td> 
<td>����</td> 
</tr> 
<tr> 
<td>1</td> 
<td>����1</td> 
<td>2</td> 
</tr> 
<tr> 
<td>2</td> 
<td>����2</td> 
<td>2</td> 
</tr> 
<tr> 
<td>3</td> 
<td>����3</td> 
<td>2</td> 
</tr> 
<tr> 
<td>4</td> 
<td>����4</td> 
<td>2</td> 
</tr> 
<tr> 
<td>5</td> 
<td>����5</td> 
<td>2</td> 
</tr> 
<tr> 
<td colspan="2">�ܼƣ�</td> 
<td>10</td> 
</tr> 

</table> 
</BODY> 
</HTML> 