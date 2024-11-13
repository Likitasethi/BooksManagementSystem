<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");

try {
	

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book?useSSL=false", "root",
	"");
	String query = "delete from books where id=?";

	RequestDispatcher rd = null;

	PreparedStatement ps = con.prepareStatement(query);
	ps.setString(1, id);

	ps.executeUpdate();

	int rowCount = ps.executeUpdate();
	System.out.println(rowCount);

	rd = request.getRequestDispatcher("Book_data.jsp");

	if (rowCount > 0) {
		request.setAttribute("status", "success");
	} else {
		request.setAttribute("status", "failed");

	}

	rd.forward(request, response);

} catch (Exception e) {
	e.printStackTrace();
}
%>