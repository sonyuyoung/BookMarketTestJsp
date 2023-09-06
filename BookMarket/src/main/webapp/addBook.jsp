<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript" src ="./resources/js/validation.js"></script>
<meta charset="UTF-8">
<title>도서등록</title>

</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" >

<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
	<div class="container">
	<h1 class="display-3">도서 등록</h1>
	</div>
	

	</div>
	<div class="container">
	<div class="text-right">
	<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
	</div>
<form name="newBook" action="./processAddBook.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="bookId"/></label>
	<div class="col-sm-3">
	<input type="text" id="bookId" name="bookId" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="name"/></label>
	<div class="col-sm-3">
	<input type="text" id="name" name="name" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
	<div class="col-sm-3">
	<input type="text" id="unitPrice" name="unitPrice" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="author"/></label>
	<div class="col-sm-3">
	<input type="text" name="author" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="publisher"/></label>
	<div class="col-sm-3">
	<input type="text" name="publisher" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="releaseDate"/></label>
	<div class="col-sm-3">
	<input type="text" name="releaseDate" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="totalPages"/></label>
	<div class="col-sm-3">
	<input type="text" name="totalPages" class="form-control">
	</div>
	</div>
	
	
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="description"/></label>
	<div class="col-sm-5">
	<textarea name="description" rows="2" cols="50" class="form-control"></textarea>
	</div>
	</div>
		
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="category"/></label>
	<div class="col-sm-3">
	<input type="text" name="category" class="form-control">
	</div>
	</div>	
		
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="unitsInStock"/></label>
	<div class="col-sm-3">
	<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
	</div>
	</div>	
	
	
	<div class="form-group row">
	<label class="col-sm-2"><fmt:message key="condition"/></label>
	<div class="col-sm-5">
	<input type="radio" name="condition" value="New"><fmt:message key="condition_New"/>
	<input type="radio" name="condition" value="Old"><fmt:message key="condition_Old"/>
	<input type="radio" name="condition" value="e-book"><fmt:message key="condition_e-book"/>
	</div>
	</div>	
	
<div class="form-group row">
<label class="col-sm-2"><fmt:message key="bookImage"/></label>
<div class="col-sm-5">
<input type="file" name="bookImage" class="form-control"> 
</div>
</div>
	
		<div class="form-group row">
	<div class="col-sm-offset-2 col-sm-10">
	<input type="button" class="btn btn-primary" value="<fmt:message key="button"/>" onClick="CheckAddBook()">
	</div>
	</div>	
	
</form>
	</div>
<%@ include file = "footer.jsp" %>
</fmt:bundle>
</body>
</html>


