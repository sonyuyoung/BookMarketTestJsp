<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="dao.BookRepository" %>
<html>
<head>
<meta charset="UTF-8">
<title>도서 상세 정보</title>
<script type="text/javascript">
function addToCart() {
	if(confirm("상품을 장바구니에 추가하시겠습니까?")){
		document.addForm.submit();
	}else{
		document.addForm.reset();
	}
}
</script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				도서 정보</h1>
		</div>
	</div>
		<%@ include file="dbconn.jsp" %>
	<%
	String id = request.getParameter("id");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM Book WHERE p_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	if(rs.next()){
	%>
	<div class="container">
		<div class="row">
	<div class="col-md-5">
	<img src="/upload/<%=rs.getString("p_fileName")%>" style="width :100%">
	</div>
			<div class="col-md-6">
				<h3>[<%=rs.getString("p_name")%>]<%=rs.getString("p_id") %></h3>
				<p><%=rs.getString("p_description") %></p>
					<p>
					<b>도서코드 : </b>
					<span class="badge badge-danger">
						<%=rs.getString("p_id") %>
					</span>
				</p>
				<p><b>출판사</b> :<%=rs.getString("p_publisher") %></p>
				<p><b>저자</b> : <%=rs.getString("p_author") %></p>
				<p><b>재고 수</b> : <%=rs.getString("p_unitsInStock") %></p>
				<p><b>총 페이지 수</b> : <%=rs.getString("p_totalPages") %></p>
				<p><b>출판일</b> : <%=rs.getString("p_releaseDate") %></p>
				<h4><%=rs.getString("p_unitPrice") %>원</h4>
				
				<p><form action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post" name="addForm">
						
						
					<a href="#" class="btn btn-info"  onclick="addToCart()">도서 주문 &raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
					<a href="./books.jsp" class="btn btn-secondary">도서 목록 &raquo;</a>
				</p>
				</form>
			</div>
		</div>

	</div>
		<hr>
		<%} %>
<%@ include file = "footer.jsp" %>
</body>
</html>