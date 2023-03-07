<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<%
	PreparedStatement pstat = null;
	ResultSet rs = null;
	String op = request.getParameter("op");
	if (op.equals("add")){
		String pid = request.getParameter("pid");
		String name=null,price=null,img=null,id=null;
		sql = "select * from product,members where product_id=?";
		pstat = con.prepareStatement(sql);
		pstat.setString(1,pid);
		rs = pstat.executeQuery();
		if (rs.next()){
			img = rs.getString("product_img").trim();
			name = rs.getString("product_name").trim();
			price = rs.getString("product_price").trim();
			id = rs.getString("id").trim();			
		}
		rs.close();
		pstat.close();
		
		sql = "insert into cart(cid,pimg,pname,pprice,pnum,id,total) values(?,?,?,?,?,?,?)";
		pstat = con.prepareStatement(sql);
		pstat.setString(1,null);
		pstat.setString(2,img);
		pstat.setString(3,name);
		pstat.setString(4,price);
		pstat.setInt(5,1);
		pstat.setString(6,id);
		pstat.setString(7,price);
		pstat.executeUpdate();
		pstat.close();
		con.close();
		response.sendRedirect("cart.jsp");
				}
	
	if (op.equals("update")){
		int cid = Integer.parseInt(request.getParameter("cid"));
		int num = Integer.parseInt(request.getParameter("num"));
		double price=Double.parseDouble(request.getParameter("price"));
		sql = "update cart set pnum = ?, total = ? where cid=?";
		pstat = con.prepareStatement(sql);
		pstat.setInt(1,num);
		pstat.setString(2,new Double(price*num).toString());
		pstat.setInt(3,cid);
		pstat.executeUpdate();
		pstat.close();
		con.close();
		response.sendRedirect("cart.jsp");
	}	

	if (op.equals("del")){
		int cid = Integer.parseInt(request.getParameter("cid"));
		sql = "delete from cart where cid=?";
		pstat = con.prepareStatement(sql);
		pstat.setInt(1,cid);
		pstat.executeUpdate();
		pstat.close();	
		con.close();
		response.sendRedirect("cart.jsp");
	}
	
	if (op.equals("clear")){
		sql = "delete from cart";
		pstat = con.prepareStatement(sql);
		pstat.executeUpdate();
		pstat.close();
		con.close();
		response.sendRedirect("cart.jsp");
	}
%>