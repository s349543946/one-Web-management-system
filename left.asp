<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp"-->
<html>
<head>
<title>������̨�˵�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="style/admin.css" type="text/css" rel="stylesheet" />
</head>
<%
sql="select * from admin_user where id="&session("admin")&""
   set xy=server.createobject("adodb.recordset") 
   xy.open sql,conn,1,1 
qx=xy("Ȩ��")
sh=xy("�̻�")
%>
<body>
<table width="185" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="32" background="images/main_40.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="25%">&nbsp;</td>
          <td width="75%" height="30"><div class="t1">�����˵�</div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="171" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td>

            <table id="subtree2" style="DISPLAY:" width="80%" border="0" align="center" cellpadding="0" cellspacing="0">

  <tr>
                <td width="9%" height="24" > <%if qx="1" then %><img id="xy_xt5" src="images/ico06.gif" width="8" height="8" /></td>
 <td width="91%"><a  href="../admin_manage.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">�˺Ź���</a>

<%end if%>
   </tr> 

  <tr>
                <td width="9%" height="24" ><img id="xy_xt1" src="images/ico06.gif" width="8" height="8" /></td>
               
                
                <td width="91%"> <%if qx="3" then %><a href="../search��ѯ.asp "  target="main" class="menu_t2" onClick="xy_tp('1');">������ҵ��ѯ</a></td>
                <%else %><a  href="../search��ѯ.asp "  target="main" class="menu_t2" onClick="xy_tp('1');">̩����ҵ��ѯ</a></td>
<%end if%>
              </tr>
  <tr>
               <%if qx<>"3" then %> <td width="9%" height="24" ><img id="xy_xt1" src="images/ico06.gif" width="8" height="8" /></td>
                <td width="91%"><a href="../search�����ѯ.asp "  target="main" class="menu_t2" onClick="xy_tp('1');">̩�̼����ѯ</a></td>
                <%end if%>
              </tr>
  <tr>
                <td width="9%" height="24" ><img id="xy_xt1" src="images/ico06.gif" width="8" height="8" /></td>
                <td width="91%"><a href="../searchʱ����ʽ�.asp "  target="main" class="menu_t2" onClick="xy_tp('1');">ʱ�������ҵ��ѯ</a></td>
              </tr>
  <tr>
                <td width="9%" height="24" ><img id="xy_xt1" src="images/ico06.gif" width="8" height="8" /></td>
                <td width="91%"><a href="../search�������²�ѯ.asp "  target="main" class="menu_t2" onClick="xy_tp('1');">̩��������ҵ��ѯ</a></td>
              </tr>
<tr>
                <td width="9%" height="24" ><img id="xy_xt5" src="images/ico06.gif" width="8" height="8" /></td>
 <td width="91%"> <%if qx="1" then %><a  href="../add_common.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">̩��������ҵ����</a>
<%else %><a  href="../add_commonsh1.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">̩��������ҵ����</a>

<%end if%>
              <tr>         
                <td width="9%" height="24" ><img id="xy_xt2" src="images/ico06.gif" width="8" height="8" /></td>
                <td width="91%"> <a  href="../search�޸�.asp "  target="main" class="menu_t2" onClick="xy_tp('2');">̩����ҵ�޸�</a></td>
              </tr>
   </tr>
                       <tr>
                <td width="9%" height="24" > <%if qx="1" then %><img id="xy_xt5" src="images/ico06.gif" width="8" height="8" /></td>
 <td width="91%"><a  href="../shanghuiliulan.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">�̻���Ϣ���</a>

<%end if%>
   </tr>     
                       <tr>
                <td width="9%" height="24" > <%if qx="1" then %><img id="xy_xt5" src="images/ico06.gif" width="8" height="8" /></td>
 <td width="91%"><a  href="../xiugaishanghuigl.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">�̻���Ϣ�޸�</a>

<%end if%>
   </tr>   
     
                       <tr>
                <td width="9%" height="24" > <%if qx="1" then %><img id="xy_xt5" src="images/ico06.gif" width="8" height="8" /></td>
 <td width="91%"><a  href="../�̻���Ϣ����.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">�̻���Ϣ����</a>

<%end if%>
   </tr>
                       <tr>
                <td width="9%" height="24" > <%if qx="1" then %><img id="xy_xt5" src="images/ico06.gif" width="8" height="8" /></td>
 <td width="91%"><a  href="../�̻���Ϣɾ��.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">�̻���Ϣɾ��</a>

<%end if%>
   </tr>

   
  <tr>
                <td width="9%" height="24" > <%if qx="1" then %><img id="xy_xt5" src="images/ico06.gif" width="8" height="8" /></td>
 <td width="91%"><a  href="../������Ϣ���.asp "  target="main" class="menu_t2" onClick="xy_tp('5');">������Ϣ���</a>

<%end if%>
   </tr>     
  

   
   
            </table>
          
          
       
            <!--  ����ϵͳ����    -->
            
           
            
           
          
            
            
            
            </td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="20" background="images/main_58.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="20" valign="bottom"><div align="center" class="l_copy">�汾��2016-2018</div></td>
        </tr>
      </table></td>
  </tr>
</table>
<SCRIPT language=JavaScript>
function xy_tp(idt){
    var nametu="xy_xt"+idt;
    var tp = document.getElementById(nametu);
    tp.src="images/ico05.gif";//ͼƬico04Ϊ��ɫ��������
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xy_xt"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xy_xt'+i);
		if(tp2!=undefined)
	    {tp2.src="images/ico06.gif";}//ͼƬico06Ϊ��ɫ��������
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