<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>ѧϰ��Դ</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="xuexiziyuan_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
//youjqjiu if(request.getParameter("f")!=null){
//qiuji
//youshenhe
//youzhifu
//jitihuan
//youjqjiu }
new CommDAO().insert(request,response,"xuexiziyuan",ext,true,false,""); 
%>

  <body >
 <form  action="xuexiziyuan_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ���ѧϰ��Դ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">���±��⣺</td><td><input name='wenzhangbiaoti' type='text' id='wenzhangbiaoti' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelwenzhangbiaoti' /></td></tr>		<tr><td>�������</td><td><%=Info.getselect("wenzhangleibie","ziyuanleibie","leibie")%>&nbsp;*<label id='clabelwenzhangleibie' /></td></tr>		<tr><td  width="200">���±�ǩ��</td><td><input name='wenzhangbiaoqian' type='text' id='wenzhangbiaoqian' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">�������ݣ�</td><td><textarea name='wenzhangneirong' cols='50' rows='5' id='wenzhangneirong' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		<tr><td  width="200">�ļ����أ�</td><td><input name='wenjianxiazai' type='text' id='wenjianxiazai' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('wenjianxiazai')" style='border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td  width="200">����ˣ�</td><td><input name='tianjiaren' type='text' id='tianjiaren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var wenzhangbiaotiobj = document.getElementById("wenzhangbiaoti"); if(wenzhangbiaotiobj.value==""){document.getElementById("clabelwenzhangbiaoti").innerHTML="&nbsp;&nbsp;<font color=red>���������±���</font>";return false;}else{document.getElementById("clabelwenzhangbiaoti").innerHTML="  "; } 	var wenzhangleibieobj = document.getElementById("wenzhangleibie"); if(wenzhangleibieobj.value==""){document.getElementById("clabelwenzhangleibie").innerHTML="&nbsp;&nbsp;<font color=red>�������������</font>";return false;}else{document.getElementById("clabelwenzhangleibie").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  


