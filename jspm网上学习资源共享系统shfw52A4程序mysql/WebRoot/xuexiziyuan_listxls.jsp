<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xuexiziyuan.xls");
%>
<html>
  <head>
    <title>ѧϰ��Դ</title>
  </head>

  <body >
  <p>����ѧϰ��Դ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���±���</td>    <td bgcolor='#CCFFFF'>�������</td>    <td bgcolor='#CCFFFF'>���±�ǩ</td>        <td bgcolor='#CCFFFF'>�ļ�����</td>    <td bgcolor='#CCFFFF'>�����</td>    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "xuexiziyuan_list.jsp?1=1"; 
    String sql =  "select * from xuexiziyuan where 1=1";
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
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

