<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>����</title><LINK href="css.css" type=text/css rel=stylesheet>
    

  </head>

  <body >
  <p>���������б�</p>
  <form name="form1" id="form1" method="post" action="pinglun_list.jsp?f=f">
   ����:��������:
     <input name="pinglunneirong" type="text" id="pinglunneirong" />
     ������
     <input name="pinglunren" type="text" id="pinglunren" />
     <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>����ID [��Ӧ��] </td>
    <td bgcolor='#CCFFFF'>��������</td><td bgcolor='#CCFFFF'>������</td>
    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
     <% 
	new CommDAO().delete(request,"pinglun"); 
	String id=request.getParameter("id");
   	/* String url = "pinglun_list.jsp?id="+id; 
    String sql =  "select * from pinglun where xinwenID="+id;  */
    String url = "pinglun_list.jsp?1=1"; 
    String sql =  "select * from pinglun where 1=1";
if(request.getParameter("pinglunneirong")=="" ||request.getParameter("pinglunneirong")==null ){}else{sql=sql+" and pinglunneirong like '%"+request.getParameter("pinglunneirong")+"%'";}
if(request.getParameter("pinglunren")=="" ||request.getParameter("pinglunren")==null ){}else{sql=sql+" and pinglunren like '%"+request.getParameter("pinglunren")+"%'";}

    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,20,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
    
  </tr>
  <tr>
    <td><%=i %></td>
    <td><%=map.get("xinwenID") %> </td><td><%= map.get("pinglunneirong")%></td><td><%= map.get("pinglunren")%></td>
    <td ><%=map.get("addtime") %></td>
    <td ><a href="pinglun_list.jsp?scid=<%=id %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�&nbsp<%=i %>&nbsp��,<a style="cursor:pointer" onClick="javascript:window.print();">&nbsp&nbsp<span style='color:blue'>��ӡ��ҳ</span></a>
  </body>
</html>

