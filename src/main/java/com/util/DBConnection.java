package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	public static Connection getConnection() {
		Connection con = null;
		String url = "jdbc:postgresql://localhost:5432/onlinecourse";
		String dirver = "org.postgresql.Driver";
		String userName = "postgres";
		String password = "root";

		try {
			Class.forName(dirver);
			con = DriverManager.getConnection(url, userName, password);
			if (con != null) {
				System.out.println("DbConnection: DbConnected" + con);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
	
	public static void main(String[] args) {
		getConnection();
	}



}
