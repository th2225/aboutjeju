<%@page import="dao.CustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("inputId");
String pw = request.getParameter("inputPw");
String pwq = request.getParameter("inputQuestion");
String pwqa = request.getParameter("inputAnswer");
String name = request.getParameter("inputName");
String phone = request.getParameter("inputPhone");

CustomerDAO dao = new CustomerDAO();
dao.insertOne(id, pw, pwq, pwqa, name, phone);

dao.close();

response.sendRedirect("login.jsp");
%>
