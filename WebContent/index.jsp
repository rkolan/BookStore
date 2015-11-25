<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
    <%@ page import="java.util.List" %>
    <%@ page import="org.springframework.web.context.WebApplicationContext" %>
    <%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
    <%@ page import="bookstore.dao.BaseDao" %>
    <%@ page import="bookstore.domain.Book" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookStore</title>
</head>
<body>
<b> Welcome to BookStore !! </b>

<%
WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
BaseDao baseDao = (BaseDao)context.getBean("baseDao");
Book book= new Book();
book.setTitle("Barbie");
book.seePrice(10.9);
baseDao.persist(book);
for(Book b1: baseDao.getAll(Book.class)) {
out.print ( b1.getBookId() + " - - " + b1.getTitle() + " - -" + b1.getPrice() + "<br>");
}

 %>
</body>
</html>