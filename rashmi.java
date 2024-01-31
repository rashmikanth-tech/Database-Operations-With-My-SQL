package com.rashmi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class rashmi {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 String url,user,pass;
	 url="jdbc:mysql://localhost:3306/rocky";
	 user="root";
			 pass="@Mysql2530";
			 Connection con=DriverManager.getConnection(url, user, pass);
			 String query="insert into friend(name,usn)value(?,?)";
			 PreparedStatement ps=con.prepareStatement(query);
			 
			 ps.setString(1,"AAA");
			 ps.setInt(2,123);
			 ps.executeUpdate();
			 System.out.println("Data is inserted Sucessfully");
	}


}
