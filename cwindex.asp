<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="xyconn.asp"-->
<!--#include file="inc/config.asp"-->
<!--#include file="inc/function.asp"-->
<!--#include file="inc/xycms.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/css.css" type="text/css" rel="stylesheet" />
<title>��ҳ</title>
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
  <div id="focus">
    <div class="f_l">
      <map name="Map" id="Map">

<!-- #include file="conn.asp" -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��Ա</title>
<style type="text/css">
<!--
body,td,th {
 font-family: ����;
 font-size: 14px;
}
-->
</style>
</head>
<body>
<center>
<p>��Աע��ϵͳ</p>
<form name="form1" method="post" action="login.asp">
<table width="34%" border="0">
<tr>
<td width="33%" height="30">�û���:</td>
<td width="67%" height="30"><input name="username" type="text" id="username" size="15"></td>
</tr>
<tr>
<td height="30">����:</td>
<td height="30"><input name="password" type="password" id="password" size="15"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" name="Submit" value="ȷ��">
<input type="reset" name="Submit" value="����"></td>
</tr>
<tr>
<td colspan="2"><a href="reg.asp" target="_self">ע��</a></td>
�û������������
</tr>
</table>
</form>
</center>
</body>
</html>






      </map>
    </div>
    <div class="f_c">
      <div class="f_c_t">
        <dt>
          <span class="bt">̩�̶�̬</span><span class="mor"><a href="news.asp?id=3" target="_blank">>>����</a></span>
          <div class="clear"></div>
        </dt>
      </div>
      <div class="f_c_c">
        <div class="f_c_c_c">
          <div class="fc_l">
            <ul>
              <%=xycms_news(6,13,3,0)%>
            </ul>
            <div class="clear"></div>
          </div>
          <div class="fc_r">
            <div id="xy_fo">
              <ul>
			    <%=xycms_focus()%>
              </ul>
            </div>
          </div>
          <div class="clear"></div>
        </div>
      </div>
    </div>
    <div class="f_r">
      <div class="f_r_t">
        <dt>
          <!--
          <span class="bt1">��������</span><span class="mor1"><a href="news.asp?id=1" target="_blank">>>����</a></span>
          -->
          <span class="bt1">��������</span><span class="mor1"><a href="investPolicy.asp" target="_blank">>>����</a></span>
          <div class="clear"></div>
        </dt>
      </div>
      <div class="f_r_c">
        <div class="f_r_c_c">
          <ul>
            <%=xycms_newss(6,15,1,0)%>
          </ul>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <div id="cont">
    <div class="c_l">
      <div class="box">
        <div class="b_l">
          <div class="b_l_t">
            <dt>
              <span class="bt">������ҵ</span><span class="mor"><a href="inCompany.asp" target="_blank">>>����</a></span>
              <div class="clear"></div>
            </dt>
          </div>
          <div class="b_l_c">
            <div class="b_l_c_c">
              <ul>
                <%=xycms_news(6,20,9,0)%>
              </ul>
              <div class="clear"></div>
            </div>
          </div>
        </div>
        <div class="b_r">
          <div class="b_l_t">
            <dt>
              <span class="bt">������ҵ</span><span class="mor"><a href="outCompany.asp" target="_blank">>>����</a></span>
              <div class="clear"></div>
            </dt>
          </div>
          <div class="b_l_c">
            <div class="b_l_c_c">
              <ul>
                <%=xycms_news(6,20,10,0)%>
              </ul>
              <div class="clear"></div>
            </div>
          </div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="pic">
        <div class="pic_c">
          <div id="colee_left" class="zmd">
          <table cellpadding="0" cellspacing="0" border="0">
            <tr>
              <td id="colee_left1" valign="top" align="center">
                <table cellpadding="2" cellspacing="0" border="0">
                  <tr align="center">
				    
<%=xycms_proimg()%>

                  </tr>
                </table>
              </td>
              <td id="colee_left2" valign="top"></td>
            </tr>
          </table>
        </div>
		<script>
        //ʹ��divʱ���뱣֤colee_left2��colee_left1����ͬһ����.
		var speed=30//�ٶ���ֵԽ���ٶ�Խ��
        var colee_left2=document.getElementById("colee_left2");
        var colee_left1=document.getElementById("colee_left1");
        var colee_left=document.getElementById("colee_left");
            colee_left2.innerHTML=colee_left1.innerHTML
	    function Marquee3(){
          if(colee_left2.offsetWidth-colee_left.scrollLeft<=0)//offsetWidth �Ƕ���Ŀɼ����
             colee_left.scrollLeft-=colee_left1.offsetWidth//scrollWidth �Ƕ����ʵ�����ݵĿ��������߿��
          else{
             colee_left.scrollLeft++
               }
             }
          var MyMar3=setInterval(Marquee3,speed)
              colee_left.onmouseover=function() {clearInterval(MyMar3)}
              colee_left.onmouseout=function() {MyMar3=setInterval(Marquee3,speed)}
      </script>

        </div>
      </div>
      <div class="box">
        <div class="b_l">
          <div class="b_l_t">
            <dt>
              <span class="bt">�ص���ҵ</span><span class="mor"><a href="impoIndustry.asp" target="_blank">>>����</a></span>
              <div class="clear"></div>
            </dt>
          </div>
          <div class="b_l_c">
            <div class="b_l_c_c">
              <ul>
                <%=xycms_news(6,20,11,0)%>
              </ul>
              <div class="clear"></div>
            </div>
          </div>
        </div>
        <div class="b_r">
          <div class="b_l_t">
            <dt>
              <span class="bt">̩˳�̻�</span><span class="mor"><a href="news.asp?id=12" target="_blank">>>����</a></span>
              <div class="clear"></div>
            </dt>
          </div>
          <div class="b_l_c">
            <div class="b_l_c_c">
              <ul>
                <%=xycms_news(6,20,12,0)%>
              </ul>
              <div class="clear"></div>
            </div>
          </div>
        </div>
        <div class="clear"></div>
      </div>
    </div>
    <div class="c_r">
      <div class="f_r_t">
        <dt>
          <span class="bt1">�ֻ���Ƶ</span><span class="mor1"></span>
          <div class="clear"></div>
        </dt>
      </div>
      <div class="f_r_v">
        <%=xycms_video()%>
      </div>
      <div class="c_r_pic"><script src="advfile/ad12.js"></script></div>
      <div class="f_r_t">
        <dt>
          <span class="bt1">�Ǹ���ҵ</span><span class="mor1"><a href="member.asp" target="_blank">>>����</a></span>
          <div class="clear"></div>
        </dt>
      </div>
      <div class="f_r_cc">
        <div class="f_r_hy" id="MarqueeDiv1">
          <ul>
            <% call xycms_toptitle("xymember","member")%>
          </ul>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <!--#include file="foot.asp"-->
</div>
<SCRIPT type=text/javascript>
//new Marquee("MarqueeDiv7",0,0.1,234,220,20,4000,234,220);
new Marquee("MarqueeDiv1",0,0.1,200,266,50,2000,0,27,0);
</SCRIPT>
</body>
</html>
