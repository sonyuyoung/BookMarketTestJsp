<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
Connection conn = null;

try{
String url= "jdbc:mysql://localhost:3306/BookMarketDB";
String user="root";
String password="1234";


Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(url,user,password);
System.out.println("연결");
}catch(SQLException ex){
	out.println("데이터베이스 연결이 실패했습니다");
	out.println("SQLException :" + ex.getMessage());
}
%>
