package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import com.bean.UserBean;
import com.util.DBConnection;

public class AddUsersDao {
	
	public void insert(UserBean Bean) {
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con
					.prepareStatement("insert into users(firstname,lastname,phoneno,email,password) values(?,?,?,?,?)");
			// pstmt.setInt(1, Bean.getDsid());
			pstmt.setString(1, Bean.getFirstname());
			pstmt.setString(2, Bean.getLastname());
			pstmt.setString(3, Bean.getPhoneno());
			pstmt.setString(4, Bean.getEmail());
			pstmt.setString(5, Bean.getPassword());
			
			pstmt.executeUpdate();

			System.out.println("User Record Inserted....");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<UserBean> listUsers() {
		ArrayList<UserBean> user = new ArrayList<UserBean>();
		UserBean u = null;
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from users");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				u = new UserBean();
				u.setUid(rs.getInt("uid"));
				u.setFirstname(rs.getString("firstname"));
				u.setLastname(rs.getString("lastname"));
				u.setPhoneno(rs.getString("phoneno"));
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));
				user.add(u);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public int  countUser() {
		 
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select count(*) as totalUs from users");
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			return rs.getInt("totalUs");
				 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public ResultSet checkLogin(String firstname, String password) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("Select * from users where firstname = ? and password = ?");
			pstmt.setString(1, firstname);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			System.out.println("Login Successss...");

		} catch (Exception e) {
			// TODO: handle exception

			e.printStackTrace();
		}
		return rs;
	}

}
