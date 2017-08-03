<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp"-->
<html>
<head>
<title>管理后台菜单</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="style/admin.css" type="text/css" rel="stylesheet" />
</head>
<%
sql="select * from admin_user where id="&session("admin")&""
   set xy=server.createobject("adodb.recordset") 
   xy.open sql,conn,1,1 
qx=xy("权限")
sh=xy("商会")
%>
<body>
<table width="185" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="32" background="images/main_40.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="25%">&nbsp;</td>
          <td width="75%" height="30"><div class="t1">管理菜单</div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="171" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td>
          <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="l_tab1">
              <tr>
                <td height="26"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="8%"><img name="img1" id="img1" src="images/ico04.gif" width="8" height="11" /></td>
                      <td width="92%"><a href="javascript:" target="main" class="menu_t1" onClick="list('1');" >基本信息管理</a></td>
                    </tr>
                  </table></td>
              </tr>
            </TABLE>
            <table id="subtree1" style="DISPLAY:" width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                <td width="9%" height="24" ><img id="xy_xt1" src="images/ico06.gif" width="8" height="12" /></td>
                <td width="91%"><a href="../search浏览.asp "  target="main" class="menu_t2" onClick="xy_tp('1');">企业信息浏览</a></td>
              </tr>
       <tr>
                <td width="9%" height="24" ><img id="xy_xt1" src="images/ico06.gif" width="8" height="12" /></td>
                <td width="91%"><a href="../search导出.asp "  target="main" class="menu_t2" onClick="xy_tp('1');">企业信息导出</a></td>
              </tr>
       <tr>
                <td width="9%" height="24" ><img id="xy_xt1" src="images/ico06.gif" width="8" height="12" /></td>
                <td width="91%"><a href="../search打印.asp "  target="main" class="menu_t2" onClick="xy_tp('1');">企业信息打印</a></td>
              </tr>
  <tr>
                <td width="9%" height="24" ><img id="xy_xt1" src="images/ico06.gif" width="8" height="12" /></td>
                <td width="91%"><a href="../search查询.asp "  target="main" class="menu_t2" onClick="xy_tp('1');">企业信息查询</a></td>
              </tr>
              <tr>         
                <td width="9%" height="24" ><img id="xy_xt2" src="images/ico06.gif" width="8" height="12" /></td>
                <td width="91%"> <a  href="../search修改.asp "  target="main" class="menu_t2" onClick="xy_tp('2');">企业信息修改</a>


   
</td>
              </tr>
                     <tr>
                <td width="9%" height="24" ><img id="xy_xt5" src="images/ico06.gif" width="8" height="12" /></td>
 <td width="91%"> <%if qx="1" then %><a  href="../add_common.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">企业信息添加</a>
<%elseif qx="2" then %><a  href="../add_commonsh1.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">企业信息添加</a>

<%end if%>
   </tr>
     
                       <tr>
                <td width="9%" height="24" > <%if qx="1" then %><img id="xy_xt5" src="images/ico06.gif" width="8" height="12" /></td>
 <td width="91%"><a  href="../商会信息添加.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">商会信息添加</a>

<%end if%>
   </tr>
                       <tr>
                <td width="9%" height="24" > <%if qx="1" then %><img id="xy_xt5" src="images/ico06.gif" width="8" height="12" /></td>
 <td width="91%"><a  href="../商会信息删除.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">商会信息删除</a>

<%end if%>
   </tr>
            </table>
          
          
       
            <!--  任务系统结束    -->
            
           
            
           
          
            
            
            
            </td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="20" background="images/main_58.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="20" valign="bottom"><div align="center" class="l_copy">版本：2016-2018</div></td>
        </tr>
      </table></td>
  </tr>
</table>
<SCRIPT language=JavaScript>
function xy_tp(idt){
    var nametu="xy_xt"+idt;
    var tp = document.getElementById(nametu);
    tp.src="images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xy_xt"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xy_xt'+i);
		if(tp2!=undefined)
	    {tp2.src="images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="images/ico04.gif";
	}
}

</SCRIPT>
</body>
</html>