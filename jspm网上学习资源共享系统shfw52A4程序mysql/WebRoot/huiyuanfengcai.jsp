<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>��Ա���</title>
<!--bixanjxiqxi-->
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet />

</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<!--hxsglxiangdxongjxs-->
<body>

<%
  String xsname=request.getParameter("xsname"); 
   
 %>
<table width="1014" height="1056" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td height="778"><table id="__01" width="1014" height="778" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="778" valign="top" bgcolor="#E7DFC8"><%@ include file="qtleft.jsp"%></td>
            <td valign="top" bgcolor="#E7DFC8"><table id="__01" width="778" height="778" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td height="233"><table id="__01" width="778" height="233" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="778" height="41" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="23%" height="22" align="center" valign="bottom"><strong>��������ѧϰ��Դ</strong></td>
                        <td width="77%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="778" height="180" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="17" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="727" height="712" valign="top" bgcolor="#F3ECDA" class="newsline">
						
						
						
						 <form name="form1" id="form1" method="post" action="">
   ����:  ���±��⣺<input name="wenzhangbiaoti" type="text" id="wenzhangbiaoti" style='border:solid 1px #000000; color:#666666' size="12" />  �������<%=Info.getselect("wenzhangleibie","ziyuanleibie","leibie"," 1=1 ")%>  ���±�ǩ��<input name="wenzhangbiaoqian" type="text" id="wenzhangbiaoqian" style='border:solid 1px #000000; color:#666666' size="12" />  �������ݣ�<input name="wenzhangneirong" type="text" id="wenzhangneirong" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="����"  style='border:solid 1px #000000; color:#666666' onClick="javascript:history.back();"/><!-- onClick="javascript:location.href='xuexiziyuanlist_xls.jsp';" /> -->
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���±���</td>
    <td bgcolor='#CCFFFF'>�������</td>
    <td bgcolor='#CCFFFF'>���±�ǩ</td>
    
    <td bgcolor='#CCFFFF'>�ļ�����</td>
    <td bgcolor='#CCFFFF'>�����</td>
    
    
    <td width="30" align="center" bgcolor="CCFFFF">��ϸ</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"xuexiziyuan"); 
    String url = "xuexiziyuanlist.jsp?1=1"; 
    //String sql =  "select * from xuexiziyuan where tianjiaren='"+request.getSession().getAttribute("username")+"' ";
	String sql = "select * from xuexiziyuan where 1=1 and tianjiaren='"+xsname+"'";
if(request.getParameter("wenzhangbiaoti")=="" ||request.getParameter("wenzhangbiaoti")==null ){}else{sql=sql+" and wenzhangbiaoti like '%"+request.getParameter("wenzhangbiaoti")+"%'";}
if(request.getParameter("wenzhangleibie")=="" ||request.getParameter("wenzhangleibie")==null ){}else{sql=sql+" and wenzhangleibie like '%"+request.getParameter("wenzhangleibie")+"%'";}
if(request.getParameter("wenzhangbiaoqian")=="" ||request.getParameter("wenzhangbiaoqian")==null ){}else{sql=sql+" and wenzhangbiaoqian like '%"+request.getParameter("wenzhangbiaoqian")+"%'";}
if(request.getParameter("wenzhangneirong")=="" ||request.getParameter("wenzhangneirong")==null ){}else{sql=sql+" and wenzhangneirong like '%"+request.getParameter("wenzhangneirong")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	
	 //String xs=(String)map.get("tianjiaren");
     //System.out.println(xs);
      //System.out.println(xsname);
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
 

      <tr>
    <td width="30" align="center"><%=i %></td>

    
    <td><%=map.get("wenzhangbiaoti") %></td><td><%=map.get("wenzhangleibie") %></td><td><%=map.get("wenzhangbiaoqian") %></td><td><a href='<%=map.get("wenjianxiazai") %>' target='_blank'>����</a></td><td><%=map.get("tianjiaren") %></td>
    
    <td width="30" align="center"> <a href="xuexiziyuandetail.jsp?id=<%=map.get("id")%>" >��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }						
						  
						  
						  
						  
					</td>
                        <td width="34" background="qtimages/1_02_02_02_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="12"><img src="qtimages/1_02_02_02_03.gif" width="778" height="12" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
          </tr>
      </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
<!-- dfexnxxiaxng -->
</body>
</html>
<!--suxilxatxihuxan-->
