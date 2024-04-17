package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBC {				
	String url = "jdbc:mysql://localhost:3306/demo";
	String username = "root";
	String password = "trickortreat";
	String[] result = new String[2];		
	
	public String[] getAdminData() {
		//The code that gets the data from the database to send the email		
		String sql = "select * from adminCredentials";
				
		try {			
			Class.forName("com.mysql.cj.jdbc.Driver");		
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			rs.next();
			for (int i = 1; i < 3; i++) {
				result[i - 1] = rs.getString(i);				
			}			
			con.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) { 
			e.printStackTrace();
		}			
		return result;
	}
	
	public String[] getUserData() {		
		//The code that gets the data from the database to send the email
		String sql = "select * from userCredentials";		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");	
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			rs.next();
			for (int i = 1; i < 3; i++) {
				result[i - 1] = rs.getString(i);				
			}				
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) { 
			e.printStackTrace();
		}		
		return result;
	}
}
