<!-- #include file="conn.asp" -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>注册会员|泰顺商人网-泰顺商人自己的平台</title>
<META name="keywords" content="注册会员|泰顺商人网-泰顺商人自己的平台">
<META name="description" content="注册会员|泰顺商人网-泰顺商人自己的平台">
<link rel="icon" href="/favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
<link rel="bookmark" href="/favicon.ico" />
<link href="css/public.css" rel="stylesheet" type="text/css">
</head>
<%



sql="select * from admin_user where id="&session("admin")&""
   set xy=server.createobject("adodb.recordset") 
   xy.open sql,conn,1,1 
qx=xy("权限")
sh=xy("商会")

set rs=server.createobject("adodb.recordset") 

exec="select * from shanghui where 商会='"&sh&"' ORDER BY ID "
rs.open exec,conn,1,1
%>
<body>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/public.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.ST1 {
	font-size: 13px;
	color: #003D79;
    font-weight:bold
}
.ST2 {font-size: 13px;
 color:#454545}
-->
</style>

          
			
			 
			  <script>

function Jtrim(str)
{

        var i = 0;
        var len = str.length;
        if ( str == "" ) return( str );
        j = len -1;
        flagbegin = true;
        flagend = true;
        while ( flagbegin == true && i< len)
        {
           if ( str.charAt(i) == " " )
                {
                  i=i+1;
                  flagbegin=true;
                }
                else
                {
                        flagbegin=false;
                }
        }

        while  (flagend== true && j>=0)
        {
            if (str.charAt(j)==" ")
                {
                        j=j-1;
                        flagend=true;
                }
                else
                {
                        flagend=false;
                }
        }

        if ( i > j ) return ("")

        trimstr = str.substring(i,j+1);
        return trimstr;
}


</script>
	

				 <td width="140" align="center"><div align="center">
              <script language=JavaScript>
today=new Date();
function initArray(){
this.length=initArray.arguments.length
for(var i=0;i<this.length;i++)
this[i+1]=initArray.arguments[i] }
var d=new initArray(
"星期日",
"星期一",
"星期二",
"星期三",
"星期四",
"星期五",
"星期六");
document.write(
"<font color='#666666' style='font-size:9pt;font-family: 宋体'>",
today.getFullYear(),"年",
today.getMonth()+1,"月",
today.getDate(),"日",
"&nbsp;&nbsp;",
d[today.getDay()+1],
"</font>" );
</script>
            </div></td>
				</form>
				  
          

    
</td>
<td id=demo11 valign=top>
</td></tr></table></div> 
<script> 
var speed3=30 
demo11.innerHTML=demo10.innerHTML 
function Marquee3(){ 
if(demo11.offsetWidth-demo9.scrollLeft<=0) 
demo9.scrollLeft-=demo10.offsetWidth 
else{ 
demo9.scrollLeft++ 
} 
} 
var MyMar3=setInterval(Marquee3,speed3) 
demo9.onmouseover=function() {clearInterval(MyMar3)} 
demo9.onmouseout=function() {MyMar3=setInterval(Marquee3,speed3)} 
</script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
</td>
           
   
   


      
	
        
        <td width="10">&nbsp;</td>
        
          </tr>
           <tr>
            <td height="592" align="center" valign="top" background="images/1_27-1.jpg" style="padding-top:10px; "><div id="divAdd" style="display:none "><TABLE cellSpacing=1 cellPadding=1 width="95%" align=center      bgColor=#003399 border=0>                      
		<TBODY>
                        <TR bgColor=#ffffcc> 
                          <TD height=30 align=middle bgcolor="#E0EAFE"><FONT class=f3 
                  color=#000000><B>服　务　条　款</B></FONT></TD>
                        </TR>
                        <TR bgColor=#ffffff> 
                          <TD> <CENTER>
                              <BR>
                              <B>请仔细阅读本协议</B> 
                              <P>泰顺商人网 依据以下条件和条款提供您所享有的服务。<BR>
                              </P>
                              <TEXTAREA name="textarea" cols=80 rows=15 readOnly wrap=VIRTUAL style="FONT-SIZE: 14px; WIDTH: 95%">　　欢迎阅读 泰顺商人网  服务条款协议(下称“本协议”)。本协议阐述之条款和条件适用于您使用  泰顺商人网  网站所提供的各种工具和服务(下称“服务”)。 
 
1. 接受条款。 
通过首页进入 泰顺商人网  网站即表示您同意自己已经与 泰顺商人网  订立本协议，且您将受本协议的条款和条件 (“条款”) 约束。 泰顺商人网  可随时自行全权决定更改“条款”。如“条款”有任何变更，泰顺商人网  将其网站上刊载公告，通知予您。如您不同意相关变更，必须停止使用“服务”。经修订的“条款”一经在 泰顺商人网  网站的公布后，立即自动生效。您登录或继续使用“服务”将表示您接受经修订的“条款”。除另行明确声明外，任何使“服务”范围扩大或功能增强的新内容均受本协议约束。除非经 泰顺商人网  的授权高层管理人员签订书面协议，本协议不得另行作出修订。 
 
 
2.谁可使用 泰顺商人网  ？ 
“服务”仅供能够根据相关法律订立具有法律约束力的合约的个人或公司使用。因此，您的年龄必须在十八周岁或以上，才可使用 泰顺商人网  服务。如不符合本项条件，请勿使用“服务”。 泰顺商人网  可随时自行全权决定拒绝向任何人士提供“服务”。“服务”不会提供给被暂时或永久中止资格的 泰顺商人网  会员。 
 
3. 收费。 
 泰顺商人网  保留在根据第1条通知您后，收取“服务”费用的权利。您因进行交易、向 泰顺商人网  获取有偿服务或接触 泰顺商人网  服务器而发生的所有应纳税赋，以及一切硬件、软件、服务及其他方面的费用均由您负责支付。 泰顺商人网  保留在无须发出通知的情况下，暂时或永久地更改或停止部份或全部“服务”的权利。 
 
4. 泰顺商人网  网站仅作为交易地点。 
 泰顺商人网  网站仅作为用户物色交易对象，就货物和服务的交易进行协商，以及获取各类与贸易相关的服务的地点。但是，泰顺商人网  不能控制交易所涉及的物品的质量、安全或合法性，商贸信息的真实性或准确性，以及交易方履行其在贸易协议项下的各项义务的能力。 泰顺商人网  不能也不会控制交易各方能否履行协议义务。此外，您应注意到，与外国国民、未成年人或以欺诈手段行事的人进行交易的风险是客观存在的。 
 
5.您的资料和供买卖的物品。 
“您的资料”包括您在注册、交易或列举物品过程中、在任何公开信息场合或通过任何电子邮件形式，向 泰顺商人网  或其他用户提供的任何资料，包括数据、文本、软件、音乐、声响、照片、图画、影像、词句或其他材料。您应对“您的资料”负全部责任，而 泰顺商人网  网仅作为您在网上发布和刊登“您的资料”的被动渠道。但是，倘若本网认为“您的资料”可能使本网承担任何法律或道义上的责任，或可能使本网 (全部或部份地) 失去 泰顺商人网  的互联网服务供应商或其他供应商的服务，或您未在 泰顺商人网  规定的期限内登录或再次登录网站，则 泰顺商人网  网可自行全权决定对“您的资料”采取 泰顺商人网  认为必要或适当的任何行动，包括但不限于删除该类资料。您特此保证，您对提交给 泰顺商人网  的“您的资料”拥有全部权利，包括全部版权。您确认，泰顺商人网  没有责任去认定或决定您提交给 泰顺商人网  的资料哪些是应当受到保护的，对享有“服务”的其他用户使用“您的资料”， 泰顺商人网  也不必负责。 
 
5.1 注册义务。 
如您在 泰顺商人网  网站注册，您同意：(a) 根据本网站所刊载的会员资料表格的要求，提供关于您或贵公司的真实、准确、完整和反映当前情况的资料；(b) 维持并及时更新会员资料，使其保持真实、准确、完整和反映当前情况。倘若您提供任何不真实、不准确、不完整或不能反映当前情况的资料，或 泰顺商人网  有合理理由怀疑该等资料不真实、不准确、不完整或不能反映当前情况， 泰顺商人网  有权暂停或终止您的注册身份及资料，并拒绝您在目前或将来对“服务”(或其任何部份) 以任何形式使用。如您代表一家公司或其他法律主体在 泰顺商人网  网登记，则您声明和保证，您有权使该公司或其他法律主体受本协议“条款”约束。 
 
5.2 会员注册名、密码和保密。 
在登记过程中，您将选择会员注册名和密码。您须自行负责对您的会员注册名和密码保密，且须对您在会员注册名和密码下发生的所有活动承担责任。您同意：(a) 如发现任何人未经授权使用您的会员注册名或密码，或发生违反保密规定的任何其他情况，您会立即通知 泰顺商人网  ；及 (b) 确保您在每个上网时段结束时，以正确步骤离开网站。泰顺商人网  不能也不会对因您未能遵守本款规定而发生的任何损失或损毁负责。 
 
5.3 关于您的资料的规则。 
您同意，“您的资料”和您供在 泰顺商人网  网站上交易的任何“物品”（泛指一切可供依法交易的、有形的或无形的、以各种形态存在的某种具体的物品，或某种权利或利益，或某种票据或证券，或某种服务或行为。本协议中“物品”一词均含此义） 
a. 不会有欺诈成份，与售卖伪造或盗窃无涉； 
b. 不会侵犯任何第三者对该物品享有的物权，或版权、专利、商标、商业秘密或其他知识产权，或隐私权、名誉权； 
c. 不会违反任何法律、法规、条例或规章 (包括但不限于关于规范出口管理、贸易配额、保护消费者、不正当竞争或虚假广告的法律、法规、条例或规章)； 
d. 不会含有诽谤（包括商业诽谤）、非法恐吓或非法骚扰的内容； 
e. 不会含有淫秽、或包含任何儿童色情内容； 
f. 不会含有蓄意毁坏、恶意干扰、秘密地截取或侵占任何系统、数据或个人资料的任何病毒、伪装破坏程序、电脑蠕虫、定时程序炸弹或其他电脑程序； 
g. 不会直接或间接与下述各项货物或服务连接，或包含对下述各项货物或服务的描述：(i) 本协议项下禁止的货物或服务；或 (ii) 您无权连接或包含的货物或服务。此外，您同意不会：(h) 在与任何连锁信件、大量胡乱邮寄的电子邮件、滥发电子邮件或任何复制或多余的信息有关的方面使用“服务”；(i) 未经其他人士同意，利用“服务”收集其他人士的电子邮件地址及其他资料；或 (j) 利用“服务”制作虚假的电子邮件地址，或以其他形式试图在发送人的身份或信息的来源方面误导其他人士。 
 
5.4 被禁止物品。 
您不得在 泰顺商人网  网站公布或通过 泰顺商人网  网站买卖：(a) 可能使 泰顺商人网  违反任何相关法律、法规、条例或规章的任何物品；或 (b) 目前列入 泰顺商人网  被禁止物品清单的任何物品。 泰顺商人网  被禁止物品清单经在此提及而被纳入本协议，并可随时加以更新。 
 
6. 您授予 泰顺商人网  的许可使用权。 
您授予 泰顺商人网  独家的、全球通用的、永久的、免费的许可使用权利 (并有权在多个曾面对该权利进行再授权)，使 泰顺商人网  有权(全部或部份地) 使用、复制、修订、改写、发布、翻译、分发、执行和展示"您的资料"或制作其派生作品，和/或以现在已知或日后开发的任何形式、媒体或技术，将"您的资料"纳入其他作品内。 
 
7.隐私。 
尽管有第6条所规定的许可使用权， 泰顺商人网  将仅根据 泰顺商人网  的隐私声明使用“您的资料”。 泰顺商人网  隐私声明的全部条款属于本协议的一部份，因此，您必须仔细阅读。请注意，您一旦自愿地在 泰顺商人网  交易地点披露“您的资料”，该等资料即可能被其他人士获取和使用。 
 
8.交易程序 
 
8.1 添加产品描述条目。产品描述是由您提供的在 泰顺商人网  网站上展示的文字描述、图画和/或照片，可以是(a) 对您拥有而您希望出售的产品的描述；或 (b) 对您正寻找的产品的描述。您可在 泰顺商人网  网站发布任一类产品描述，或两种类型同时发布，条件是，您必须将该等产品描述归入正确的类目内。 泰顺商人网  不对产品描述的准确性或内容负责。 
 
8.2 就交易进行协商。 
交易各方通过在 泰顺商人网  网站上明确描述报盘和回盘，进行相互协商。所有各方接纳报盘或回盘将使所涉及的 泰顺商人网  用户有义务完成交易。除非在特殊情况下，诸如用户在您提出报盘后实质性地更改对物品的描述或澄清任何文字输入错误，或您未能证实交易所涉及的用户的身份等，报盘和承诺均不得撤回。 
 
8.3 处理交易争议。 
泰顺商人网  不会且不能牵涉进交易各方的交易当中。倘若您与一名或一名以上用户，或与您通过 泰顺商人网  网站获取其服务的第三者服务供应商发生争议，您免除 泰顺商人网   (及 泰顺商人网  代理人和雇员) 在因该等争议而引起的，或在任何方面与该等争议有关的不同种类和性质的任何 (实际和后果性的) 权利主张、要求和损害赔偿等方面的责任。 
 
8.4 运用常识。 
 泰顺商人网  不能亦不试图对其他用户通过“服务”提供的资料进行控制。就其本质而言，其他用户的资料，可能是令人反感的、有害的或不准确的，且在某些情况下可能带有错误的标识说明或以欺诈方式加上标识说明。本公司希望您在使用本公司网站时，小心谨慎并运用常识。 
 
9.交易系统 
 
9.1 不得操纵交易。 
您同意不利用帮助实现蒙蔽或欺骗意图的同伙(下属的客户或第三方)，操纵与另一交易方所进行的商业谈判的结果。 
 
9.2 系统完整性。 
您同意，您不得使用任何装置、软件或例行程序干预或试图干预 泰顺商人网  网站的正常运作或正在 泰顺商人网  网站上进行的任何交易。您不得采取对任何将不合理或不合比例的庞大负载加诸 泰顺商人网  网络结构的行动。您不得向任何第三者披露您的密码，或与任何第三者共用您的密码，或为任何未经批准的目的使用您的密码。 
 
9.3 反馈。 
您不得采取任何可能损害信息反馈系统的完整性的行动，诸如：利用第二会员身份标识或第三者为您本身留下正面反馈；利用第二会员身份标识或第三者为其他用户留下负面反馈 (反馈数据轰炸)；或在用户未能履行交易范围以外的某些行动时，留下负面的反馈 (反馈恶意强加)。 
 
9.4 不作商业性利用。 
您同意，您不得对任何资料作商业性利用，包括但不限於在未经 泰顺商人网  授权高层管理人员事先书面批准的情况下，复制在 泰顺商人网  网站上展示的任何资料。 
 
 
10. 终止或访问限制。 
您同意， 泰顺商人网  可自行全权决定以任何理由 (包括但不限于 泰顺商人网  认为您已违反本协议的字面意义和精神，或以不符合本协议的字面意义和精神的方式行事，或您在超过90天的时间内未以您的帐号及密码登录网站) 终止您的“服务”密码、帐户 (或其任何部份) 或您对“服务”的使用，并删除和丢弃您在使用“服务”中提交的的“您的资料”。 泰顺商人网  同时可自行全权决定，在发出通知或不发出通知的情况下，随时停止提供“服务”或其任何部份。您同意，根据本协议的任何规定终止您使用“服务”之措施可在不发出事先通知的情况下实施，并承认和同意， 泰顺商人网  可立即使您的帐户无效，或撤销您的帐户以及在您的帐户内的所有相关资料和档案，和/或禁止您进一步接入该等档案或“服务”。帐号终止后， 泰顺商人网  没有义务为您保留原帐号中或与之相关的任何信息，或转发任何未曾阅读或发送的信息给您或第三方。此外，您同意， 泰顺商人网  不会就终止您接入“服务”而对您或任何第三者承担任何责任。第12、13、14和22各条应在本协议终止后继续有效。 
 
11. 违反规则会有什么后果？ 
在不限制其他补救措施的前提下，发生下述任一情况， 泰顺商人网  可立即发出警告，暂时中止、永久中止或终止您的会员资格，删除您的任何现有产品信息，以及您在网站上展示的任何其他资料：(i) 您违反本协议；(ii)  泰顺商人网  无法核实或鉴定您向 泰顺商人网  提供的任何资料；或 (iii)  泰顺商人网  相信您的行为可能会使您、 泰顺商人网  用户或通过 泰顺商人网  或 泰顺商人网  网站提供服务的第三者服务供应商发生任何法律责任。在不限制任何其他补救措施的前提下，倘若发现您从事涉及 泰顺商人网  网站的诈骗活动，泰顺商人网  可暂停或终止您的帐户。 
 
12. 服务“按现状”提供。 
 泰顺商人网  会尽一切努力使您在使用 泰顺商人网  网站的过程中得到乐趣。遗憾的是， 泰顺商人网  不能随时预见到任何技术上的问题或其他困难。该等困难可能会导致数据损失或其他服务中断。为此，您明确理解和同意，您使用“服务”的风险由您自行承担。“服务”以“按现状”和“按可得到”的基础提供。 泰顺商人网  明确声明不作出任何种类的所有明示或暗示的保证，包括但不限于关於适销性、适用於某一特定用途和无侵权行为等方面的保证。 泰顺商人网  对下述内容不作保证：(i)“服务”会符合您的要求；(ii)“服务”不会中断，且适时、安全和不带任何错误；(iii) 通过使用“服务”而可能获取的结果将是准确或可信赖的；及 (iv) 您通过“服务”而购买或获取的任何产品、服务、资料或其他材料的质量将符合您的预期。通过使用“服务”而下载或以其他形式获取任何材料是由您自行全权决定进行的，且与此有关的风险由您自行承担，对于因您下载任何该等材料而发生的您的电脑系统的任何损毁或任何数据损失，您将自行承担责任。您从 泰顺商人网  或通过或从“服务”获取的任何口头或书面意见或资料，均不产生未在本协议内明确载明的任何保证。 
 
13. 责任范围。 
您明确理解和同意， 泰顺商人网  不对因下述任一情况而发生的任何损害赔偿承担责任，包括但不限於利润、商誉、使用、数据等方面的损失或其他无形损失的损害赔偿 (无论 泰顺商人网  是否已被告知该等损害赔偿的可能性)：(i) 使用或未能使用“服务”；(ii) 因通过或从“服务”购买或获取任何货物、样品、数据、资料或服务，或通过或从“服务”接收任何信息或缔结任何交易所产生的获取替代货物和服务的费用；(iii) 未经批准接入或更改您的传输资料或数据；(iv) 任何第三者对“服务”的声明或关於“服务”的行为；或 (v) 因任何原因而引起的与“服务”有关的任何其他事宜，包括疏忽。 
 
14. 赔偿。 
您同意，因您违反本协议或经在此提及而纳入本协议的其他文件，或因您违反了法律或侵害了第三方的权利，而使第三方对泰顺商人网  及其子公司、分公司、董事、职员、代理人提出索赔要求（包括司法费用和其他专业人士的费用），您必须赔偿给 泰顺商人网  及其子公司、分公司、董事、职员、代理人，使其等免遭损失。 
 
15. 遵守法律。 
您应遵守与您使用“服务”，以及与您竞买、购买和销售任何物品以及提供商贸信息有关的所有相关的法律、法规、条例和规章。 
 
16. 无代理关系。 
您与 泰顺商人网  仅为独立订约人关系。本协议无意结成或创设任何代理、合伙、合营、雇用与被雇用或特许权授予与被授予关系。 
 
17. 广告和金融服务。 
您与在“服务”上或通过“服务”物色的刊登广告人士通讯或进行业务往来或参与其推广活动，包括就相关货物或服务付款和交付相关货物或服务，以及与该等业务往来相关的任何其他条款、条件、保证或声明，仅限于在您和该刊登广告人士之间发生。您同意，对于因任何该等业务往来或因在“服务”上出现该等刊登广告人士而发生的任何种类的任何损失或损毁， 泰顺商人网  无需负责或承担任何责任。您如打算通过“服务”创设或参与与任何公司、股票行情、投资或证券有关的任何服务，或通过“服务”收取或要求与任何公司、股票行情、投资或证券有关的任何新闻信息、警戒性信息或其他资料，敬请注意，泰顺商人网  不会就通过“服务”传送的任何该等资料的准确性、有用性或可用性、可获利性负责或承担任何责任，且不会对根据该等资料而作出的任何交易或投资决策负责或承担任何责任。 
 
18. 链接。 
“服务”或第三者均可提供与其他万维网网站或资源的链接。由于 泰顺商人网  并不控制该等网站和资源，您承认并同意， 泰顺商人网  并不对该等外在网站或资源的可用性负责，且不认可该等网站或资源上或可从该等网站或资源获取的任何内容、宣传、产品、服务或其他材料，也不对其等负责或承担任何责任。您进一步承认和同意，对于任何因使用或信赖从此类网站或资源上获取的此类内容、宣传、产品、服务或其他材料而造成（或声称造成）的任何直接或间接损失， 泰顺商人网  均不承担责任。 
 
19. 通知。 
除非另有明确规定，任何通知应以电子邮件形式发送，(就 泰顺商人网  而言) 电子邮件地址为 tzsrw#tzsrw.cn，或 (就您而言) 发送到您在登记过程中向 温州商人网  提供的电子邮件地址，或有关方指明的该等其他地址。在电子邮件发出二十四 (24) 小时后，通知应被视为已送达，除非发送人被告知相关电子邮件地址已作废。或者，泰顺商人网  可通过邮资预付挂号邮件并要求回执的方式，将通知发到您在登记过程中向 泰顺商人网  提供的地址。在该情况下，在付邮当日三 (3) 天后通知被视为已送达。 
 
20. 不可抗力。 
对于因 泰顺商人网  合理控制范围以外的原因，包括但不限於自然灾害、罢工或骚乱、物质短缺或定量配给、暴动、战争行为、政府行为、通讯或其他设施故障或严重伤亡事故等，致使 泰顺商人网  延迟或未能履约的， 泰顺商人网  不对您承担任何责任。 
 
21. 转让。 
 泰顺商人网  转让本协议无需经您同意。 
 
22. 其他规定。 
本协议构成您和 泰顺商人网  之间的全部协议，规定了您对“服务”的使用，并取代您和 泰顺商人网  先前订立的任何书面或口头协议。本协议各方面应受中华人民共和国大陆地区法律的管辖。倘若本协议任何规定被裁定为无效或不可强制执行，该项规定应被撤销，而其余规定应予执行。条款标题仅为方便参阅而设，并不以任何方式界定、限制、解释或描述该条款的范围或限度。本公司未就您或其他人士的某项违约行为采取行动，并不表明本公司撤回就任何继后或类似的违约事件采取行动的权利。 
 
23. 仲裁。 
因本协议或本公司服务所引起或与其有关的任何争议应提交中国泰顺市仲裁委员会并根据其适用的仲裁规则进行仲裁裁决。任何该等争议应单独地仲裁，不得与任何其他方的争议在任何仲裁中合并处理。仲裁应在中国北京市进行，而仲裁裁决可提交对其有管辖权的任何法院予以强制执行。您在仲裁进行期间，可向中国北京地区内具有管辖权的法院寻求为保护您的权利或财产所需的任何临时或初步补救措施，包括但不限于财产保全或证据保全措施。 
</TEXTAREA>
                              <BR>
                              <BR>
                            </CENTER></TD>
                        </TR>
                      </TBODY>
                    </TABLE><br></div>
<TABLE id=AutoNumber108 style="BORDER-COLLAPSE: collapse" 
                  borderColor=#111111 cellSpacing=0 cellPadding=0 width="98%" 
                  align=center border=0>
                              <TBODY>
                                <TR> 
                                  <TD width="100%" height=30> <P align=center>+++ 
                                      商会信息添加 +++  <font color="#EC5106">(*必填)</font></P></TD>
                                </TR>

                                <TR> 
                                  <TD 
                        background="bg_03b.gif"><IMG 
                        height=1 
                        src="spacer(1).gif" 
                        width=1></TD>
                                </TR>
                                <TR> 
                                  <TD width="100%" bgColor=#F9F9F9> 
								  
 <script language = "JavaScript">
var onecount;
onecount=0;
subcat = new Array();
        
subcat[0] = new Array("市委及其所属机构","1","1");
        
subcat[1] = new Array("县（区、市）委及其所属机构","1","2");
        
subcat[2] = new Array("乡（镇）党委","1","3");
        
subcat[3] = new Array("市人大常委会","1","4");
        
subcat[4] = new Array("县（区、市）人大常委会","1","5");
        
subcat[5] = new Array("市政治协商会议","1","6");
        
subcat[6] = new Array("县（区、市）政治协商会议","1","7");
        
subcat[7] = new Array("市人民政府及其所属机构","1","8");
        
subcat[8] = new Array("县（区、市）人民政府及其所属机构","1","9");
        
subcat[9] = new Array("乡（镇）人民政府及其所属机构","1","10");
        
subcat[10] = new Array("街道办事处","1","11");
        
subcat[11] = new Array("公安局、派出所","1","12");
        
subcat[12] = new Array("交巡警","1","13");
        
subcat[13] = new Array("治安、协警、联防","1","14");
        
subcat[14] = new Array("武装部队","1","15");
        
subcat[15] = new Array("消防","1","16");
        
subcat[16] = new Array("司法及其行政机关","1","17");
        
subcat[17] = new Array("财政税务机关","1","18");
        
subcat[18] = new Array("工商行政机关","1","19");
        
subcat[19] = new Array("物价管理机关","1","20");
        
subcat[20] = new Array("法院、法庭","1","21");
        
subcat[21] = new Array("检察院","1","22");
        
subcat[22] = new Array("仲裁委员会","1","23");
        
subcat[23] = new Array("海关","1","24");
        
subcat[24] = new Array("出入境检检验检疫","1","25");
        
subcat[25] = new Array("口岸委、办","1","26");
        
subcat[26] = new Array("边检","1","27");
        
subcat[27] = new Array("各地政府驻地机构","1","28");
        
subcat[28] = new Array("民主党派","1","29");
        
subcat[29] = new Array("社会团体","1","30");
        
subcat[30] = new Array("工会、共青团、妇联","1","31");
        
subcat[31] = new Array("科协、社联、文联、残联","1","32");
        
subcat[32] = new Array("基金会、福利会、慈善会","1","33");
        
subcat[33] = new Array("侨联、工商联、商会","1","34");
        
subcat[34] = new Array("校友会、同学会、联谊会","1","35");
        
subcat[35] = new Array("研究会、促进会","1","36");
        
subcat[36] = new Array("红十字会","1","37");
        
subcat[37] = new Array("老年（龄）工作委员会","1","38");
        
subcat[38] = new Array("关心下一代委员会","1","39");
        
subcat[39] = new Array("对外交流协会","1","40");
        
subcat[40] = new Array("专业学会、行业协会","1","41");
        
subcat[41] = new Array("宗教团体","1","42");
        
subcat[42] = new Array("社区管理委员会","1","43");
        
subcat[43] = new Array("居民委员会","1","44");
        
subcat[44] = new Array("村民委员会","1","45");
        
subcat[45] = new Array("纺织","2","46");
        
subcat[46] = new Array("棉纺织","2","47");
        
subcat[47] = new Array("毛纺织","2","48");
        
subcat[48] = new Array("麻纺织","2","49");
        
subcat[49] = new Array("化纤纺织","2","50");
        
subcat[50] = new Array("丝绸（绢）纺织","2","51");
        
subcat[51] = new Array("纺织原料批发零售","2","52");
        
subcat[52] = new Array("染整","2","53");
        
subcat[53] = new Array("纺织成品","2","54");
        
subcat[54] = new Array("商标加工","2","55");
        
subcat[55] = new Array("制线、纺带","2","56");
        
subcat[56] = new Array("纺织装饰织物","2","57");
        
subcat[57] = new Array("针（编）织品","2","58");
        
subcat[58] = new Array("服装","2","59");
        
subcat[59] = new Array("服装设计","2","60");
        
subcat[60] = new Array("服装生产","2","61");
        
subcat[61] = new Array("服装销售","2","62");
        
subcat[62] = new Array("丝绸服装、绣衣、内衣","2","63");
        
subcat[63] = new Array("时装","2","64");
        
subcat[64] = new Array("童装","2","65");
        
subcat[65] = new Array("西装、领带","2","66");
        
subcat[66] = new Array("衬衫","2","67");
        
subcat[67] = new Array("制服","2","68");
        
subcat[68] = new Array("裤业","2","69");
        
subcat[69] = new Array("针织服装","2","70");
        
subcat[70] = new Array("羊毛衫","2","71");
        
subcat[71] = new Array("休闲、运动服","2","72");
        
subcat[72] = new Array("服装面料及用品","2","73");
        
subcat[73] = new Array("呢绒面料及用品","2","74");
        
subcat[74] = new Array("服装辅料及用品","2","75");
        
subcat[75] = new Array("拉链、纽扣","2","76");
        
subcat[76] = new Array("鞋帽","2","77");
        
subcat[77] = new Array("制鞋业","2","78");
        
subcat[78] = new Array("制鞋用品","2","79");
        
subcat[79] = new Array("鞋帽销售","2","80");
        
subcat[80] = new Array("皮革、毛皮及其制品","2","81");
        
subcat[81] = new Array("制革、合成革","2","82");
        
subcat[82] = new Array("皮革制品","2","83");
        
subcat[83] = new Array("毛皮鞣制加工及其制品","2","84");
        
subcat[84] = new Array("人造毛皮","2","85");
        
subcat[85] = new Array("皮件","2","86");
        
subcat[86] = new Array("皮革服装","2","87");
        
subcat[87] = new Array("箱包、手提袋、无纺布袋","2","88");
        
subcat[88] = new Array("箱包附件","2","89");
        
subcat[89] = new Array("手套","2","90");
        
subcat[90] = new Array("羽绒服装","2","91");
        
subcat[91] = new Array("羽绒制品","2","92");
        
subcat[92] = new Array("中国餐饮","3","93");
        
subcat[93] = new Array("餐饮公司","3","94");
        
subcat[94] = new Array("外国餐饮","3","95");
        
subcat[95] = new Array("西餐","3","96");
        
subcat[96] = new Array("牛排","3","97");
        
subcat[97] = new Array("日本、韩国料理","3","98");
        
subcat[98] = new Array("清真饭店","3","99");
        
subcat[99] = new Array("海鲜酒家","3","100");
        
subcat[100] = new Array("火锅","3","101");
        
subcat[101] = new Array("比萨","3","102");
        
subcat[102] = new Array("休闲餐厅","3","103");
        
subcat[103] = new Array("娱乐城、夜总会","3","104");
        
subcat[104] = new Array("演出、放映场所","3","105");
        
subcat[105] = new Array("公园","3","106");
        
subcat[106] = new Array("俱乐部","3","107");
        
subcat[107] = new Array("网吧","3","108");
        
subcat[108] = new Array("酒吧、咖啡馆、冰淇淋店","3","109");
        
subcat[109] = new Array("茶楼、茶坊","3","110");
        
subcat[110] = new Array("宾馆酒店","3","111");
        
subcat[111] = new Array("度假村","3","112");
        
subcat[112] = new Array("旅馆（社）、招待所","3","113");
        
subcat[113] = new Array("旅游服务","3","114");
        
subcat[114] = new Array("旅行社（公司）","3","115");
        
subcat[115] = new Array("旅游景点","3","116");
        
subcat[116] = new Array("百货商场（商厦）","3","117");
        
subcat[117] = new Array("百货店（商行）","3","118");
        
subcat[118] = new Array("自选购物、便利店","3","119");
        
subcat[119] = new Array("大卖场","3","120");
        
subcat[120] = new Array("超市","3","121");
        
subcat[121] = new Array("综合医院","4","122");
        
subcat[122] = new Array("中医医院","4","123");
        
subcat[123] = new Array("中西医结合医院","4","124");
        
subcat[124] = new Array("专科医院","4","125");
        
subcat[125] = new Array("整形美容","4","126");
        
subcat[126] = new Array("社区医疗服务","4","127");
        
subcat[127] = new Array("乡镇医院","4","128");
        
subcat[128] = new Array("卫生院（所）、门诊所（部）","4","129");
        
subcat[129] = new Array("救护、献血","4","130");
        
subcat[130] = new Array("卫生保健","4","131");
        
subcat[131] = new Array("妇幼保健","4","132");
        
subcat[132] = new Array("疗（休）养院、康复中心","4","133");
        
subcat[133] = new Array("戒毒康复","4","134");
        
subcat[134] = new Array("保健医疗卫生咨询","4","135");
        
subcat[135] = new Array("疾病防治、防疫站","4","136");
        
subcat[136] = new Array("制剂用辅料及附加剂","4","137");
        
subcat[137] = new Array("药品","4","138");
        
subcat[138] = new Array("药品包装服务","4","139");
        
subcat[139] = new Array("生物制品、滋补药、诊断试剂","4","140");
        
subcat[140] = new Array("生物、生化制品","4","141");
        
subcat[141] = new Array("保健用品","4","142");
        
subcat[142] = new Array("保健食品","4","143");
        
subcat[143] = new Array("医用器械","4","144");
        
subcat[144] = new Array("医疗用品","4","145");
        
subcat[145] = new Array("假肢、人工器官植（介）入器械","4","146");
        
subcat[146] = new Array("助听器","4","147");
        
subcat[147] = new Array("康复器材","4","148");
        
subcat[148] = new Array("公关、礼仪服务","5","149");
        
subcat[149] = new Array("影视、电台广告","5","150");
        
subcat[150] = new Array("报纸、杂志等出版物广告","5","151");
        
subcat[151] = new Array("公交、铁路、民航广告","5","152");
        
subcat[152] = new Array("户外广告","5","153");
        
subcat[153] = new Array("综合性广告","5","154");
        
subcat[154] = new Array("企业策划、品牌管理","5","155");
        
subcat[155] = new Array("广告策划、制作","5","156");
        
subcat[156] = new Array("旗蓬、广告伞、气球广告","5","157");
        
subcat[157] = new Array("灯箱、招牌、条幅、霓虹灯","5","158");
        
subcat[158] = new Array("刻字、喷绘、写真、电脑雕刻","5","159");
        
subcat[159] = new Array("广告材料、展示用品","5","160");
        
subcat[160] = new Array("展览策划与制作","5","161");
        
subcat[161] = new Array("展览设计与制作","5","162");
        
subcat[162] = new Array("保安、翻译","5","163");
        
subcat[163] = new Array("送水、保洁服务","5","164");
        
subcat[164] = new Array("公证、法律","5","165");
        
subcat[165] = new Array("会计、审计、代理计帐","5","166");
        
subcat[166] = new Array("资产评估、商标、专利等知识产利","5","167");
        
subcat[167] = new Array("市场调研、投资管理咨询","5","168");
        
subcat[168] = new Array("人才服务、职业介绍","5","169");
        
subcat[169] = new Array("工商、财税代理咨询","5","170");
        
subcat[170] = new Array("商业经纪与代理","5","171");
        
subcat[171] = new Array("文化经纪与代理","5","172");
        
subcat[172] = new Array("拍卖","5","173");
        
subcat[173] = new Array("印刷","6","174");
        
subcat[174] = new Array("纸品印刷","6","175");
        
subcat[175] = new Array("包装装潢印刷","6","176");
        
subcat[176] = new Array("胶印","6","177");
        
subcat[177] = new Array("印刷用品及器材","6","178");
        
subcat[178] = new Array("制版","6","179");
        
subcat[179] = new Array("电脑制版","6","180");
        
subcat[180] = new Array("图文制作、输出","6","181");
        
subcat[181] = new Array("装订","6","182");
        
subcat[182] = new Array("包装","6","183");
        
subcat[183] = new Array("包装材料","6","184");
        
subcat[184] = new Array("包装容器","6","185");
        
subcat[185] = new Array("包装器具","6","186");
        
subcat[186] = new Array("捆扎带","6","187");
        
subcat[187] = new Array("瓶（罐）盖","6","188");
        
subcat[188] = new Array("造纸、纸张","6","189");
        
subcat[189] = new Array("造纸原料","6","190");
        
subcat[190] = new Array("纸品","6","191");
        
subcat[191] = new Array("日用纸品","6","192");
        
subcat[192] = new Array("纸塑制品","6","193");
        
subcat[193] = new Array("工艺美术品制作","7","194");
        
subcat[194] = new Array("工艺美术品销售","7","195");
        
subcat[195] = new Array("印花及印字","7","196");
        
subcat[196] = new Array("雕刻、镶嵌","7","197");
        
subcat[197] = new Array("工艺饰品","7","198");
        
subcat[198] = new Array("金银珠宝","7","199");
        
subcat[199] = new Array("礼品","7","200");
        
subcat[200] = new Array("贺卡、挂历","7","201");
        
subcat[201] = new Array("旅游纪念品","7","202");
        
subcat[202] = new Array("抽纱绣品","7","203");
        
subcat[203] = new Array("工艺编织","7","204");
        
subcat[204] = new Array("室内装饰品","7","205");
        
subcat[205] = new Array("奖杯、奖牌","7","206");
        
subcat[206] = new Array("镜框","7","207");
        
subcat[207] = new Array("钟表及其配件","7","208");
        
subcat[208] = new Array("眼镜及其配件","7","209");
        
subcat[209] = new Array("烟具、打火机及配件","7","210");
        
subcat[210] = new Array("有色金属","8","211");
        
subcat[211] = new Array("黑色金属","8","212");
        
subcat[212] = new Array("稀有金属","8","213");
        
subcat[213] = new Array("合金材料","8","214");
        
subcat[214] = new Array("金属型材","8","215");
        
subcat[215] = new Array("金属丝、绳、网、索、筛网","8","216");
        
subcat[216] = new Array("钢材及不锈钢制品","8","217");
        
subcat[217] = new Array("金属工具","8","218");
        
subcat[218] = new Array("五金配件","8","219");
        
subcat[219] = new Array("金属箱柜、保险箱","8","220");
        
subcat[220] = new Array("金属结构件","8","221");
        
subcat[221] = new Array("金属制品","8","222");
        
subcat[222] = new Array("石墨、碳素","8","223");
        
subcat[223] = new Array("陶瓷、玻璃、玻璃钢制品","8","224");
        
subcat[224] = new Array("玻璃纤维及制品","8","225");
        
subcat[225] = new Array("注塑、吸塑、吹塑","8","226");
        
subcat[226] = new Array("热处理、冲压加工、焊割","8","227");
        
subcat[227] = new Array("铸造、铸煅、轧钢","8","228");
        
subcat[228] = new Array("其它金属加工","8","229");
        
subcat[229] = new Array("磨具、磨料、模具","8","230");
        
subcat[230] = new Array("砂纸、砂带","8","231");
        
subcat[231] = new Array("电镀、镀塑","8","232");
        
subcat[232] = new Array("涂装、烤漆、烤瓷、蚀刻","8","233");
        
subcat[233] = new Array("标牌","8","234");
        
subcat[234] = new Array("金属表面处理","8","235");
        
subcat[235] = new Array("机床及其附件","9","236");
        
subcat[236] = new Array("机械机器","9","237");
        
subcat[237] = new Array("机械配件","9","238");
        
subcat[238] = new Array("机械修理","9","239");
        
subcat[239] = new Array("通用机械机器","9","240");
        
subcat[240] = new Array("压缩机","9","241");
        
subcat[241] = new Array("减速机","9","242");
        
subcat[242] = new Array("纺织、服装、皮革专用设备","9","243");
        
subcat[243] = new Array("化工、制药、玻璃机械","9","244");
        
subcat[244] = new Array("矿山、冶金、建筑机械","9","245");
        
subcat[245] = new Array("热力工程设备","9","246");
        
subcat[246] = new Array("焊割、焊接机械","9","247");
        
subcat[247] = new Array("金属加工、铸造设备","9","248");
        
subcat[248] = new Array("起重运输机械","9","249");
        
subcat[249] = new Array("冷冻、暖通设备","9","250");
        
subcat[250] = new Array("电气、电工、电子专用设备","9","251");
        
subcat[251] = new Array("交通、安全、消防专用设备","9","252");
        
subcat[252] = new Array("清洗、清洁、环保专用设备","9","253");
        
subcat[253] = new Array("造纸、印刷、包装、塑料机械","9","254");
        
subcat[254] = new Array("木材家具、日（杂）用品生产设备","9","255");
        
subcat[255] = new Array("食品、饮料、烟草、炊事专用设备","9","256");
        
subcat[256] = new Array("农林牧鱼、水利专用设备","9","257");
        
subcat[257] = new Array("锅炉","9","258");
        
subcat[258] = new Array("泵业","9","259");
        
subcat[259] = new Array("动力、节能设备","9","260");
        
subcat[260] = new Array("机电设备制造、销售","9","261");
        
subcat[261] = new Array("机电设备安装、维修及服务","9","262");
        
subcat[262] = new Array("机电配件","9","263");
        
subcat[263] = new Array("发电机","9","264");
        
subcat[264] = new Array("电动机、微电机","9","265");
        
subcat[265] = new Array("电动设备","9","266");
        
subcat[266] = new Array("高低压配电成套电器","9","267");
        
subcat[267] = new Array("轴承、齿轮、传动","9","268");
        
subcat[268] = new Array("阀门、阀门配件","9","269");
        
subcat[269] = new Array("管件","9","270");
        
subcat[270] = new Array("液压、冲压、气动件","9","271");
        
subcat[271] = new Array("标准件","9","272");
        
subcat[272] = new Array("紧固件","9","273");
        
subcat[273] = new Array("密封件","9","274");
        
subcat[274] = new Array("弹簧、减振器、链条","9","275");
        
subcat[275] = new Array("城市交通管理","10","276");
        
subcat[276] = new Array("公共交通","10","277");
        
subcat[277] = new Array("出租汽车","10","278");
        
subcat[278] = new Array("加油（气）站","10","279");
        
subcat[279] = new Array("停车场","10","280");
        
subcat[280] = new Array("航空","10","281");
        
subcat[281] = new Array("航空客运售票","10","282");
        
subcat[282] = new Array("航空货运","10","283");
        
subcat[283] = new Array("机场","10","284");
        
subcat[284] = new Array("铁路","10","285");
        
subcat[285] = new Array("铁路客运售票","10","286");
        
subcat[286] = new Array("铁路货运","10","287");
        
subcat[287] = new Array("铁路车站","10","288");
        
subcat[288] = new Array("铁路工程","10","289");
        
subcat[289] = new Array("公路","10","290");
        
subcat[290] = new Array("公路客运售票","10","291");
        
subcat[291] = new Array("公路货运","10","292");
        
subcat[292] = new Array("航运安全监督","10","293");
        
subcat[293] = new Array("航运安全售票","10","294");
        
subcat[294] = new Array("航运货运","10","295");
        
subcat[295] = new Array("救助打捞","10","296");
        
subcat[296] = new Array("联合售票","10","297");
        
subcat[297] = new Array("打包托运","10","298");
        
subcat[298] = new Array("装卸搬运","10","299");
        
subcat[299] = new Array("物流","10","300");
        
subcat[300] = new Array("货运、仓储","10","301");
        
subcat[301] = new Array("联运","10","302");
        
subcat[302] = new Array("集装箱运输","10","303");
        
subcat[303] = new Array("国际货运代理","10","304");
        
subcat[304] = new Array("保关业","10","305");
        
subcat[305] = new Array("快运速递","10","306");
        
subcat[306] = new Array("交通器材","10","307");
        
subcat[307] = new Array("交通安全设施","10","308");
        
subcat[308] = new Array("汽车销售","10","309");
        
subcat[309] = new Array("机车配件","10","310");
        
subcat[310] = new Array("汽车维护及服务","10","311");
        
subcat[311] = new Array("汽车美容、汽车美容用品","10","312");
        
subcat[312] = new Array("摩托及配件","10","313");
        
subcat[313] = new Array("二手车销售","10","314");
        
subcat[314] = new Array("特种车辆","10","315");
        
subcat[315] = new Array("船运设备及用品","10","316");
        
subcat[316] = new Array("船舶及其配件","10","317");
        
subcat[317] = new Array("船舶修理","10","318");
        
subcat[318] = new Array("人民银行","11","320");
        
subcat[319] = new Array("商业银行","11","321");
        
subcat[320] = new Array("合作银行","11","322");
        
subcat[321] = new Array("综合保险","11","323");
        
subcat[322] = new Array("财产保险","11","324");
        
subcat[323] = new Array("人寿保险","11","325");
        
subcat[324] = new Array("证券","11","326");
        
subcat[325] = new Array("信托、投资","11","327");
        
subcat[326] = new Array("期货","11","328");
        
subcat[327] = new Array("租赁、融资公司","11","329");
        
subcat[328] = new Array("财务公司","11","330");
        
subcat[329] = new Array("典当、寄售商行","11","331");
        
subcat[330] = new Array("电子、仪器进出口","11","332");
        
subcat[331] = new Array("纺织、服装进出口","11","333");
        
subcat[332] = new Array("机械进出口","11","334");
        
subcat[333] = new Array("粮油医保进出口","11","335");
        
subcat[334] = new Array("五矿化工进出口","11","336");
        
subcat[335] = new Array("包装进出口","11","337");
        
subcat[336] = new Array("土畜产品进出口","11","338");
        
subcat[337] = new Array("珠宝首饰、工艺美术品进出口","11","339");
        
subcat[338] = new Array("综合贸易进出口","11","340");
        
subcat[339] = new Array("集团公司、实业公司","11","341");
        
subcat[340] = new Array("物资公司、工贸公司","11","342");
        
subcat[341] = new Array("供销社","11","343");
        
subcat[342] = new Array("国内贸易","11","344");
        
subcat[343] = new Array("外企住温机构","11","345");
        
subcat[344] = new Array("房地产管理","12","346");
        
subcat[345] = new Array("房地产开发与经营","12","347");
        
subcat[346] = new Array("物业管理","12","348");
        
subcat[347] = new Array("房地产咨询、评估","12","350");
        
subcat[348] = new Array("房地产经纪代理和中介","12","351");
        
subcat[349] = new Array("工程招、投标与监理","12","352");
        
subcat[350] = new Array("建筑设计","12","353");
        
subcat[351] = new Array("工程造价咨询","12","354");
        
subcat[352] = new Array("建筑模型设计、制作","12","355");
        
subcat[353] = new Array("建筑、拆迁工程","12","356");
        
subcat[354] = new Array("土石方、桩基、管桩工程","12","357");
        
subcat[355] = new Array("机械化、混凝土预制工程","12","358");
        
subcat[356] = new Array("净化、防水、防腐工程","12","359");
        
subcat[357] = new Array("照明、消防工程","12","360");
        
subcat[358] = new Array("综合工程","12","361");
        
subcat[359] = new Array("水电安装、设备安装","12","362");
        
subcat[360] = new Array("电气、仪表安装","12","364");
        
subcat[361] = new Array("钢结构、活动房","12","365");
        
subcat[362] = new Array("综合安装","12","366");
        
subcat[363] = new Array("环境设计与工程","12","367");
        
subcat[364] = new Array("环保、水体工程","12","368");
        
subcat[365] = new Array("园林绿化工程","12","369");
        
subcat[366] = new Array("门窗、防盗装修","12","371");
        
subcat[367] = new Array("综合装修","12","372");
        
subcat[368] = new Array("装修、装潢设计","12","373");
        
subcat[369] = new Array("建筑五金","12","374");
        
subcat[370] = new Array("管道及配件","12","375");
        
subcat[371] = new Array("门窗制作、售销","12","376");
        
subcat[372] = new Array("安防器材","12","377");
        
subcat[373] = new Array("水泥及制品","12","378");
        
subcat[374] = new Array("防火、防水、密封材料","12","379");
        
subcat[375] = new Array("隔热、保温材料","12","380");
        
subcat[376] = new Array("轻质建材","12","381");
        
subcat[377] = new Array("建筑钢材","12","382");
        
subcat[378] = new Array("砖瓦沙石","12","383");
        
subcat[379] = new Array("膜结构及综合建材","12","384");
        
subcat[380] = new Array("地板、地毯","12","385");
        
subcat[381] = new Array("地砖、瓷砖","12","386");
        
subcat[382] = new Array("灯饰、灯具","12","387");
        
subcat[383] = new Array("卫浴设备、卫浴五金","12","388");
        
subcat[384] = new Array("卫浴陶瓷","12","389");
        
subcat[385] = new Array("石材、铁艺、天花、吊顶","12","390");
        
subcat[386] = new Array("综合装饰材料","12","391");
        
subcat[387] = new Array("木材及木制品","12","392");
        
subcat[388] = new Array("通讯社","13","393");
        
subcat[389] = new Array("记者站","13","394");
        
subcat[390] = new Array("报社","13","395");
        
subcat[391] = new Array("书籍、杂志出版","13","396");
        
subcat[392] = new Array("广播电视、电视台","13","397");
        
subcat[393] = new Array("科学及技术研究","13","398");
        
subcat[394] = new Array("科研机构","13","399");
        
subcat[395] = new Array("气象、地震、海洋","13","400");
        
subcat[396] = new Array("水文、地质、测绘","13","401");
        
subcat[397] = new Array("设计事务所","13","402");
        
subcat[398] = new Array("设计院（所）","13","403");
        
subcat[399] = new Array("技术监督检验","13","404");
        
subcat[400] = new Array("质量监督检测","13","405");
        
subcat[401] = new Array("卫生监督检测","13","406");
        
subcat[402] = new Array("计量检测","13","407");
        
subcat[403] = new Array("质量认证","13","408");
        
subcat[404] = new Array("高新技术产业","13","409");
        
subcat[405] = new Array("技术开发服务","13","410");
        
subcat[406] = new Array("计算机软件","13","411");
        
subcat[407] = new Array("计算机网络及系统集成","13","412");
        
subcat[408] = new Array("计算机维护修理","13","413");
        
subcat[409] = new Array("互联网信息服务","13","414");
        
subcat[410] = new Array("公共信息网服务","13","415");
        
subcat[411] = new Array("电子商务","13","416");
        
subcat[412] = new Array("综合性大学","13","417");
        
subcat[413] = new Array("高等专科（职业）院校","13","418");
        
subcat[414] = new Array("中小学管理","13","419");
        
subcat[415] = new Array("小学","13","420");
        
subcat[416] = new Array("中小学","13","421");
        
subcat[417] = new Array("中学","13","422");
        
subcat[418] = new Array("中专、职高、技校","13","423");
        
subcat[419] = new Array("幼儿园、托儿所、学前教育","13","424");
        
subcat[420] = new Array("聋盲学校","13","425");
        
subcat[421] = new Array("体育学校","13","426");
        
subcat[422] = new Array("艺术学校","13","427");
        
subcat[423] = new Array("职工业余大学","13","428");
        
subcat[424] = new Array("成人文化教育","13","429");
        
subcat[425] = new Array("进修院校","13","430");
        
subcat[426] = new Array("广播电视、网络、函授教育","13","431");
        
subcat[427] = new Array("语言培训","13","432");
        
subcat[428] = new Array("电脑培训","13","433");
        
subcat[429] = new Array("驾驶员培训","13","434");
        
subcat[430] = new Array("英语培训","13","435");
        
subcat[431] = new Array("美容美发培训","13","436");
        
subcat[432] = new Array("职业培训","13","437");
        
subcat[433] = new Array("文物及文化保护管理","13","438");
        
subcat[434] = new Array("文化市场管理","13","439");
        
subcat[435] = new Array("文化艺术团体","13","440");
        
subcat[436] = new Array("艺术展览","13","441");
        
subcat[437] = new Array("文化服务","13","442");
        
subcat[438] = new Array("图书馆","13","443");
        
subcat[439] = new Array("档案馆","13","444");
        
subcat[440] = new Array("博物馆","13","445");
        
subcat[441] = new Array("体育场馆、单位","13","446");
        
subcat[442] = new Array("青少年活动场所","13","447");
        
subcat[443] = new Array("文化娱乐活动场所","13","448");
        
subcat[444] = new Array("文化馆（宫、站）","13","449");
        
subcat[445] = new Array("体育用品","13","450");
        
subcat[446] = new Array("休闲用品","13","451");
        
subcat[447] = new Array("健身器械","13","452");
        
subcat[448] = new Array("文娱用品","13","453");
        
subcat[449] = new Array("游乐设备、游艺机","13","454");
        
subcat[450] = new Array("玩具","13","455");
        
subcat[451] = new Array("乐器","13","456");
        
subcat[452] = new Array("煤炭","14","457");
        
subcat[453] = new Array("电力","14","458");
        
subcat[454] = new Array("石油与天然气","14","459");
        
subcat[455] = new Array("太阳能及其能源","14","460");
        
subcat[456] = new Array("矿产及产品","14","461");
        
subcat[457] = new Array("金属冶炼","14","462");
        
subcat[458] = new Array("粉末冶炼、工业炉窑","14","463");
        
subcat[459] = new Array("石油产品","14","464");
        
subcat[460] = new Array("有机原料、化工原料","14","465");
        
subcat[461] = new Array("无机原料","14","466");
        
subcat[462] = new Array("化学试剂、溶剂、助剂","14","467");
        
subcat[463] = new Array("合成纤维","14","468");
        
subcat[464] = new Array("橡胶原料","14","469");
        
subcat[465] = new Array("橡胶板、管、带","14","470");
        
subcat[466] = new Array("橡胶零件","14","471");
        
subcat[467] = new Array("轮胎、轮胎翻新","14","472");
        
subcat[468] = new Array("其他橡胶产品","14","473");
        
subcat[469] = new Array("塑料、树脂原料","14","474");
        
subcat[470] = new Array("降解塑料","14","475");
        
subcat[471] = new Array("塑料片、板、管、棒材","14","476");
        
subcat[472] = new Array("塑料丝、绳及编制品","14","477");
        
subcat[473] = new Array("泡沫塑料","14","478");
        
subcat[474] = new Array("塑料工业产品","14","479");
        
subcat[475] = new Array("塑料制品","14","480");
        
subcat[476] = new Array("海棉及制品","14","481");
        
subcat[477] = new Array("有机玻璃及制品","14","482");
        
subcat[478] = new Array("塑料薄膜","14","483");
        
subcat[479] = new Array("涂料、油漆","14","484");
        
subcat[480] = new Array("润滑油、油脂、蜡","14","485");
        
subcat[481] = new Array("染料、颜料","14","486");
        
subcat[482] = new Array("精细化工","14","487");
        
subcat[483] = new Array("化学气体","14","488");
        
subcat[484] = new Array("胶粘带、胶粘剂","14","489");
        
subcat[485] = new Array("工业化工品","14","490");
        
subcat[486] = new Array("不干胶、不燥剂","14","491");
        
subcat[487] = new Array("过滤器、净水剂","14","492");
        
subcat[488] = new Array("化肥、农药","14","493");
        
subcat[489] = new Array("电器制造","15","494");
        
subcat[490] = new Array("电器销售","15","495");
        
subcat[491] = new Array("电气成套设备","15","496");
        
subcat[492] = new Array("高、低压电器","15","497");
        
subcat[493] = new Array("电子设备制造","15","498");
        
subcat[494] = new Array("电子设备销售","15","499");
        
subcat[495] = new Array("半导体器件","15","500");
        
subcat[496] = new Array("传感器","15","501");
        
subcat[497] = new Array("电子材料","15","502");
        
subcat[498] = new Array("电子元件及组件","15","503");
        
subcat[499] = new Array("无线电元件","15","504");
        
subcat[500] = new Array("电工器材","15","505");
        
subcat[501] = new Array("绝缘材料","15","506");
        
subcat[502] = new Array("线路板","15","507");
        
subcat[503] = new Array("电线电缆","15","508");
        
subcat[504] = new Array("稳压电源","15","509");
        
subcat[505] = new Array("变压器","15","510");
        
subcat[506] = new Array("开关插座","15","511");
        
subcat[507] = new Array("整流器","15","512");
        
subcat[508] = new Array("照明器具制造","15","513");
        
subcat[509] = new Array("照明器具销售","15","514");
        
subcat[510] = new Array("电器设备部（元）件","15","515");
        
subcat[511] = new Array("自动化控制设备","15","516");
        
subcat[512] = new Array("仪器仪表及配件","15","517");
        
subcat[513] = new Array("仪器仪表零配件","15","518");
        
subcat[514] = new Array("科技、教育设备及仪器","15","519");
        
subcat[515] = new Array("电表","15","520");
        
subcat[516] = new Array("农业园区","16","521");
        
subcat[517] = new Array("农场","16","522");
        
subcat[518] = new Array("农业种植","16","523");
        
subcat[519] = new Array("农业服务","16","524");
        
subcat[520] = new Array("林业站","16","525");
        
subcat[521] = new Array("林场","16","526");
        
subcat[522] = new Array("林业服务","16","527");
        
subcat[523] = new Array("畜牧业","16","528");
        
subcat[524] = new Array("禽类饲养","16","529");
        
subcat[525] = new Array("畜牧服务","16","530");
        
subcat[526] = new Array("种畜种禽","16","531");
        
subcat[527] = new Array("渔业","16","532");
        
subcat[528] = new Array("水产养殖","16","533");
        
subcat[529] = new Array("渔业服务","16","534");
        
subcat[530] = new Array("水产良种","16","535");
        
subcat[531] = new Array("渔具及其用品","16","536");
        
subcat[532] = new Array("兽医","16","537");
        
subcat[533] = new Array("兽药","16","538");
        
subcat[534] = new Array("饲料","16","539");
        
subcat[535] = new Array("水利","16","540");
        
subcat[536] = new Array("水利工程","16","541");
        
subcat[537] = new Array("防汛管理","16","542");
        
subcat[538] = new Array("水库、水闸、排灌管理","16","543");
        
subcat[539] = new Array("食品加工","16","544");
        
subcat[540] = new Array("食品销售","16","545");
        
subcat[541] = new Array("乳品","16","546");
        
subcat[542] = new Array("烟草业","16","547");
        
subcat[543] = new Array("糖果业","16","548");
        
subcat[544] = new Array("烟糖、烟酒、烟（食）杂","16","549");
        
subcat[545] = new Array("酿酒业","16","550");
        
subcat[546] = new Array("酒类销售","16","551");
        
subcat[547] = new Array("茶叶","16","552");
        
subcat[548] = new Array("饮料","16","553");
        
subcat[549] = new Array("冷饮","16","554");
        
subcat[550] = new Array("副食品","16","555");
        
subcat[551] = new Array("水产品","16","556");
        
subcat[552] = new Array("禽类","16","557");
        
subcat[553] = new Array("肉类","16","558");
        
subcat[554] = new Array("豆制品","16","559");
        
subcat[555] = new Array("农副产品","16","560");
        
subcat[556] = new Array("土特产","16","561");
        
subcat[557] = new Array("果品","16","562");
        
subcat[558] = new Array("粮油管理","16","563");
        
subcat[559] = new Array("粮食加工","16","564");
        
subcat[560] = new Array("食用油脂加工","16","565");
        
subcat[561] = new Array("社区服务","17","566");
        
subcat[562] = new Array("净菜供应","17","567");
        
subcat[563] = new Array("摄影摄像","17","568");
        
subcat[564] = new Array("冲印彩扩","17","569");
        
subcat[565] = new Array("婚姻介绍","17","570");
        
subcat[566] = new Array("婚纱摄影","17","571");
        
subcat[567] = new Array("婚纱销售与出租","17","572");
        
subcat[568] = new Array("婚庆用品","17","573");
        
subcat[569] = new Array("美容美发","17","574");
        
subcat[570] = new Array("桑拿浴","17","575");
        
subcat[571] = new Array("足部理疗","17","576");
        
subcat[572] = new Array("保安服务","17","577");
        
subcat[573] = new Array("搬家服务","17","578");
        
subcat[574] = new Array("劳动服务","17","579");
        
subcat[575] = new Array("综合服务","17","580");
        
subcat[576] = new Array("打字复印、晒图","17","581");
        
subcat[577] = new Array("刻字凿字","17","582");
        
subcat[578] = new Array("清洗服务","17","583");
        
subcat[579] = new Array("洗染、干洗","17","584");
        
subcat[580] = new Array("家政服务","17","585");
        
subcat[581] = new Array("离退休管理","17","586");
        
subcat[582] = new Array("老年服务","17","587");
        
subcat[583] = new Array("敬老院","17","588");
        
subcat[584] = new Array("自来水管理","17","589");
        
subcat[585] = new Array("自来水工程","17","590");
        
subcat[586] = new Array("自来水生产","17","591");
        
subcat[587] = new Array("燃（煤）气管理","17","592");
        
subcat[588] = new Array("燃（煤）气工程","17","593");
        
subcat[589] = new Array("燃气生产","17","594");
        
subcat[590] = new Array("燃（煤）气销售供应","17","595");
        
subcat[591] = new Array("电力管理","17","596");
        
subcat[592] = new Array("电力工程","17","597");
        
subcat[593] = new Array("电力生产","17","598");
        
subcat[594] = new Array("电力销售供应","17","599");
        
subcat[595] = new Array("化妆品","18","600");
        
subcat[596] = new Array("洗涤用品","18","601");
        
subcat[597] = new Array("综合日化用品批发与零售","18","602");
        
subcat[598] = new Array("卫生用品","18","603");
        
subcat[599] = new Array("妇幼用品","18","604");
        
subcat[600] = new Array("冰箱、空调、电视、洗衣机","18","605");
        
subcat[601] = new Array("音响及家庭影院成套设备","18","606");
        
subcat[602] = new Array("热水器、饮水机","18","607");
        
subcat[603] = new Array("照相机、数码影音器材","18","608");
        
subcat[604] = new Array("家电小电器","18","609");
        
subcat[605] = new Array("家电配件","18","610");
        
subcat[606] = new Array("综合家用电器","18","611");
        
subcat[607] = new Array("仓储设备","18","612");
        
subcat[608] = new Array("货架","18","613");
        
subcat[609] = new Array("货币点验设备及用品","18","614");
        
subcat[610] = new Array("酒店、酒吧、厨房设备及用品","18","615");
        
subcat[611] = new Array("搪瓷、热水器","18","616");
        
subcat[612] = new Array("雨具、伞","18","617");
        
subcat[613] = new Array("清洁用具、刷子用具","18","618");
        
subcat[614] = new Array("锁、刀剪","18","619");
        
subcat[615] = new Array("美容、美发用品","18","620");
        
subcat[616] = new Array("床上用品","18","621");
        
subcat[617] = new Array("自行车、助动车及配件","18","622");
        
subcat[618] = new Array("家庭用品、劳保用品","18","623");
        
subcat[619] = new Array("家居装饰品、照明电器","18","624");
        
subcat[620] = new Array("竹、木材料及加工","18","625");
        
subcat[621] = new Array("办公家具","18","626");
        
subcat[622] = new Array("家具配件","18","627");
        
subcat[623] = new Array("综合家具批发制造","18","628");
        
subcat[624] = new Array("竹藤器","18","629");
        
subcat[625] = new Array("综合性工商企业","35","630");
        
subcat[626] = new Array("其它","35","631");
        
subcat[627] = new Array("文具用品","13","632");
        
subcat[628] = new Array("数码、打印等科技产品","13","633");
        
subcat[629] = new Array("断路器、继电器、熔断器","15","634");
        
subcat[630] = new Array("通信、通讯","35","635");
        
subcat[631] = new Array("家电服务","17","636");
        
subcat[632] = new Array("安防、防爆等器材","15","637");
        
subcat[633] = new Array("洁具","12","638");
        
subcat[634] = new Array("冷冻食品","16","639");
        
subcat[635] = new Array("调味品","16","640");
        
subcat[636] = new Array("锁具五金","8","641");
        
subcat[637] = new Array("礼品盒","7","642");
        
subcat[638] = new Array("异地温州商会","36","643");
        
subcat[639] = new Array("智能化设计、智能化系统","12","644");
        
subcat[640] = new Array("温州异地商会","1","645");
        
onecount=641;

function changelocation(locationid)
    {
    document.addnew.smid.length = 0; 

    var locationid=locationid;
    var i;
    for (i=0;i < onecount; i++)
        {
            if (subcat[i][1] == locationid)
            { 
                document.addnew.smid.options[document.addnew.smid.length] = new Option(subcat[i][0], subcat[i][2]);
            }        
        }
        

    }    
</script>
                                    <SCRIPT language=JavaScript src="../inc/validate.js"></SCRIPT> 
									<SCRIPT language=JavaScript>

//校验user的弹出窗口
function check_id_window(value){
	window.open("../check_id.asp?uname="+value,"",'toolbar=no,directories=no,scrollbars=0,resizable=1,status=no,menubar=0,width=250,height=100');
}



function checkform()
{
   
 if (checkstring("用户名", document.addnew.username.value, false)) {
    document.addnew.username.focus();
    return false;   
  }
  var filter=/^\s*[A-Za-z0-9_-]{5,20}\s*$/;
if (!filter.test(document.addnew.username.value)) { 
alert("用户名填写不正确,请重新填写！可使用的字符为（A-Z a-z 0-9 _ - )长度不小于5个字符，不超过20个字符，注意不要使用空格。"); 
document.addnew.username.focus();
return false; 
} 

  var password1 = document.addnew.password1.value;
 if (checkstring("密码", document.addnew.password1.value, false)) {
    document.addnew.password1.focus();
    return false;   
  }
 var filter=/^\s*[A-Za-z0-9_-]{6,20}\s*$/;
if (!filter.test(document.addnew.password1.value)) { 
alert("密码填写不正确,请重新填写！可使用的字符为（A-Z a-z 0-9 _ - )长度不小于6个字符，不超过20个字符，注意不要使用空格。"); 
document.addnew.password1.focus();
return false; 
} 
  var password2 = document.addnew.password2.value;
  if (password1 != password2) {
    alert("两次密码输入不一致！");
    document.addnew.password1.value="";
    document.addnew.password2.value="";
	return false;
  }
    if (checkstring("密码提示问题", document.addnew.question.value, false)) {
    document.addnew.question.focus();
    return false;   
  }
     if (checkstring("密码提示答案", document.addnew.answer.value, false)) {
    document.addnew.answer.focus();
    return false;   
  }
  
  //if (checkemail("电子邮件", document.addnew.email.value, false)) {
    //document.addnew.email.focus();
    //return false;   
  //}
   if (checkstring("公司名称", document.addnew.cname.value, false)) {
    document.addnew.cname.focus();
    return false;   
    }
	 if (addnew.tradeid.value=="") {
		alert("请选择企业所属行业大类！");
		addnew.tradeid.focus();		
		   return (false);
	}
	 if (addnew.smid.value=="") {
		alert("请选择企业所属行业小类！");
		addnew.smid.focus();		
		   return (false);
	}
	 if (addnew.cxz.value=="") {
		alert("请选择企业性质！");
		addnew.cxz.focus();		
		    return (false);
	}
	  if (addnew.quyu_class_id.value=="") {
		alert("请选择所在省份！");
		addnew.quyu_class_id.focus();		
		    return (false);
	}
    if (addnew.quyu_nclass_id.value=="") {
		alert("请选择所在城市！");
		addnew.quyu_nclass_id.focus();		
		    return (false);
	}
	
	  if (checkstring("通讯地址", document.addnew.address.value, false)) {
    document.addnew.address.focus();
    return false;   
    }
	if (addnew.zip.value=="") {
		alert("请输入邮政编码！");
		addnew.zip.focus();		
		    return (false);
	}
	  if (addnew.zip.value.length!==6) {
		alert("请正确填写邮政编码！");
		addnew.zip.focus();		
		    return (false);
	}
	if (isNaN(addnew.zip.value)){
		alert("请正确填写邮政编码！");
		addnew.zip.focus();		
		    return (false);
    }
	 if (checkstring("联系人姓名", document.addnew.pname.value, false)) {
    document.addnew.pname.focus();
    return false;   
    }
    if (checkstring("联系电话", document.addnew.phone.value, false)) {
    document.addnew.phone.focus();
    return false;   
    }
    if (document.addnew.fax.value.search(/[<>]/gi) != -1) {
    alert("传真中包含非法字符<>");
    return false;   
    }
	 if (document.addnew.http.value.search(/[<>]/gi) != -1) {
    alert("公司网址中包含非法字符<>");
    addnew.http.focus();
	return false;   
    }
  return true;
}
//-->
</SCRIPT> <DIV align=center> 
                                      <CENTER>
   <FORM name=addnew onSubmit="return checkform();" action="addnewdatashxg.asp?ac=adduser" method=post >
                       
                                        
										<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber111" height="25">
                                    <tr> 
                                      <td width="100%"><table width="94%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" id="AutoNumber115" style="border-collapse: collapse">
                                          <tr>
                                            <TD bgColor=#000000 height=2 bordercolor="#111111"> <IMG height=1 src=../img/spacer.gif width=1></TD>
                                          </tr>
                                          <tr>
                                            <td width="100%" height="25" align="center" bgcolor="#5E6378">
                                              <p align="center"><font color="#FFFFFF">=====&gt; 商 会 的 基 本 信 息 &lt;=====</font> </td>
                                          </tr>
                                        </table></td>
                                    </tr>
                                  </table>
								  <table width="94%" height="25" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#BDBFC8" bgcolor="#F5F5F5" id="AutoNumber122" style="border-collapse: collapse">
                                     
                                       <tr> 
                                          <td width="24%" align="right" height="25">商会名称：</td>
                                          <td width="76%" height="25" style="padding-left:8px ">
                                            <input type="text" name="商会名称" id="商会名称" maxlength=30 size="25" value=<%=rs("商会")%> >
                                  <front>*</front>
                                           </td>
                                        </tr>
										 <tr> 
                                          <td width="24%" align="right" height="25">会长：</td>
                                          <td width="76%" height="25" style="padding-left:8px ">
                                            <input type="text" name="会长" id="会长"  maxlength=30 size="25" value=<%=rs("会长")%>>
                                  
                                           </td>
                                        </tr>
 <tr> 
                                          <td width="24%" align="right" height="25">名誉会长：</td>
                                          <td width="76%" height="25" style="padding-left:8px ">
                                            <input type="text" name="名誉会长" id="名誉会长"  maxlength=30 size="25" value=<%=rs("名誉会长")%>>
                                  
                                           </td>
                                        </tr>
                                        					 <tr> 
                                          <td width="24%" align="right" height="25">副会长：</td>
                                          <td width="76%" height="25" style="padding-left:8px ">
                                            <input type="text" name="副会长" id="副会长"  maxlength=30 size="25" value=<%=rs("副会长")%>>
                                  
                                           </td>
                                        </tr>
  					 <tr> 
                                          <td width="24%" align="right" height="25">常务副会长：</td>
                                          <td width="76%" height="25" style="padding-left:8px ">
                                            <input type="text" name="常务副会长" id="常务副会长"  maxlength=30 size="25" value=<%=rs("常务副会长")%>>
                                  
                                           </td>
                                        </tr>

                                         <tr> 
                                          <td width="24%" align="right" height="25">秘书长：</td>
                                          <td width="76%" height="25" style="padding-left:8px ">
                                            <input type="text" name="秘书长" id="秘书长"  maxlength=30 size="25" value=<%=rs("秘书长")%>>
                                  
                                           </td>
                                        </tr>
   </tr>

                                         <tr> 
                                          <td width="24%" align="right" height="25">副秘书长：</td>
                                          <td width="76%" height="25" style="padding-left:8px ">
                                            <input type="text" name="副秘书长" id="副秘书长"  maxlength=30 size="25" value=<%=rs("副秘书长")%>>
                                  
                                           </td>
                                        </tr>
                                      </table>
									 
									  <br>

 
                                  
                    
                                  <div align="center"> 
                                    <center>
                                     
										  <TR> 
                                                <TD height=30 colspan="2"> <P align=center> 
                                                   <FONT color=#cc0000><B><span style="font-size: 10.5pt">
<a href="#"  onClick="javascript:show();"class="black">点此阅读泰顺商人网服务条款</a></font>
                                                  </P>

</TD>
                                        </TR>
										 
  				<TR> 
				
                                                <TD height=30 colspan="2"> <P align=center> 

                                                    <INPUT name="submit" type=submit  value=" 看过服务条款同意并提交 " >
                                                   
                                                  </P></TD>
				<td><%
				=request.QueryString("msg")
				%></td>	
                                        </TR>

                                      </table>
                                    </center>
                                  </div>

                                        </FORM>
                                      </CENTER>
                                    </DIV>
					<script language="javascript" type="text/javascript">
        function show() {
           document.getElementById("divAdd").style.display =document.getElementById("divAdd").style.display == "none"?"block":"none";
        }
    </script>
									 <script> 
function f()
  {var clsDate = new Date();
    document.getElementById("yzm").src="../ncode.asp?t="+ clsDate;
  }</script>
 </TR>
                              </TBODY>	
<!-- Baidu Button BEGIN -->
<script>document.getElementById("l"+"i"+"n"+"k").style.display='none';</script>
<script type="text/javascript" id="bdshare_js" data="type=slide&amp;img=0&amp;uid=654326" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
	document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?t=" + new Date().getHours();
</script>
<!-- Baidu Button END -->
</body>
</html>