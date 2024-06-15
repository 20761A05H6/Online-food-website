<%@ page import ="java.sql.*" %>
<%
	String name=request.getParameter("pname");
	String mail=request.getParameter("email");
	String pwd=request.getParameter("password");
	String phnum=request.getParameter("phoneNumber");
	String gender=request.getParameter("gender");
	String pin=request.getParameter("pincode");
	String ab=request.getParameter("about");
%>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	String qry="insert into register values(?,?,?,?,?,?,?)";
	PreparedStatement pstmt=con.prepareStatement(qry);
	pstmt.setString(1,name);
	pstmt.setString(2,mail);
	pstmt.setString(3,pwd);
	pstmt.setString(4,phnum);
	pstmt.setString(5,gender);
	pstmt.setString(6,pin);
	pstmt.setString(7,ab);
	int res=pstmt.executeUpdate();
	out.println(res+"registration successfull");
	
	
}
catch(Exception e) {
out.print(e);
}
%>
