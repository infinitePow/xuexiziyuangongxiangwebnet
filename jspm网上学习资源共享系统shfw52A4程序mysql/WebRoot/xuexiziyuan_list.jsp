<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ѧϰ��Դ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>����ѧϰ��Դ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���±��⣺<input name="wenzhangbiaoti" type="text" id="wenzhangbiaoti" style='border:solid 1px #000000; color:#666666' size="12" />  �������<%=Info.getselect("wenzhangleibie","ziyuanleibie","leibie"," 1=1 ")%>  ���±�ǩ��<input name="wenzhangbiaoqian" type="text" id="wenzhangbiaoqian" style='border:solid 1px #000000; color:#666666' size="12" />  �������ݣ�<input name="wenzhangneirong" type="text" id="wenzhangneirong" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����excel��" style='border:solid 1px #000000; color:#666666'    onClick="javascript:location.href='xuexiziyuan_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���±���</td>    <td bgcolor='#CCFFFF'>�������</td>    <td bgcolor='#CCFFFF'>���±�ǩ</td>        <td bgcolor='#CCFFFF'>�ļ�����</td>    <td bgcolor='#CCFFFF'>�����</td>    
	<td width="90" align="center" bgcolor="#CCFFFF">���۹���</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"xuexiziyuan"); 
    String url = "xuexiziyuan_list.jsp?1=1"; 
    String sql =  "select * from xuexiziyuan where 1=1";
	if(request.getParameter("wenzhangbiaoti")=="" ||request.getParameter("wenzhangbiaoti")==null ){}else{sql=sql+" and wenzhangbiaoti like '%"+request.getParameter("wenzhangbiaoti")+"%'";}if(request.getParameter("wenzhangleibie")=="" ||request.getParameter("wenzhangleibie")==null ){}else{sql=sql+" and wenzhangleibie like '%"+request.getParameter("wenzhangleibie")+"%'";}if(request.getParameter("wenzhangbiaoqian")=="" ||request.getParameter("wenzhangbiaoqian")==null ){}else{sql=sql+" and wenzhangbiaoqian like '%"+request.getParameter("wenzhangbiaoqian")+"%'";}if(request.getParameter("wenzhangneirong")=="" ||request.getParameter("wenzhangneirong")==null ){}else{sql=sql+" and wenzhangneirong like '%"+request.getParameter("wenzhangneirong")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("wenzhangbiaoti") %></td>    <td><%=map.get("wenzhangleibie") %></td>    <td><%=map.get("wenzhangbiaoqian") %></td>        <td><a href='<%=map.get("wenjianxiazai") %>' target='_blank'>����</a></td>    <td><%=map.get("tianjiaren") %></td>    
	<td width="90" align="center"><a href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=xuexiziyuan">���۹���</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="xuexiziyuan_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="xuexiziyuan_list.jsp?scid=<%=map.get("id") %>" onclick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="xuexiziyuandetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

