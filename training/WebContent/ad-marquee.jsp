<%@ include file = "database_ini.jsp"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.abc.model.*" %>
<% 
	MessageDAO msg = (MessageDAO) application.getAttribute("message");
	String title = msg.getTitle();
	String marquee = msg.getMarquee();
	request.setCharacterEncoding("utf-8");
%>

<div style="width:80%;margin:10px auto 0 auto;padding:10px;background:#DDD;border:3px solid #AAA;">
  <H3 style="width:98%;margin:0 auto;padding:5px;text-align:center;background:#999;display:inline-block;">編輯動態文字</H3>
  <form action = "api.jsp?do=marquee" method = "post">
  <table style="width:98%;margin:5px auto;color:black;background:#BBB;padding:5px;">
    <tr>
      <td class="ct" colspan="4">
        動態文字 : <input type="text" name="text" value="<%=marquee%>"/>
        <input type="submit" name="editmarquee" value="編輯確定"/>
        <input type="reset" name="res" value="重置"/>
      </td>
    </tr>    
  </table>
  </form>
</div>