package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.CyberSecurityBean;
import com.bean.WebDevelopmentBean;
import com.util.DBConnection;

public class AddWebDevelopmentDao {
	
	public void insertWebDevelopment(WebDevelopmentBean Bean) {
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con
					.prepareStatement("insert into webdevelopment(wcode,wname,wduration,wprice) values(?,?,?,?)");
			
			pstmt.setString(1, Bean.getWcode());
			pstmt.setString(2, Bean.getWname());
			pstmt.setString(3, Bean.getWduration());
			pstmt.setString(4, Bean.getWprice());

			pstmt.executeUpdate();

			System.out.println("WebDevelopment Record Inserted....");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<WebDevelopmentBean> listWebDevelopment() {
		ArrayList<WebDevelopmentBean> webdevelopment = new ArrayList<WebDevelopmentBean>();
		WebDevelopmentBean wd = null;
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from webdevelopment");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				wd = new WebDevelopmentBean();
				wd.setWdid(rs.getInt("wdid"));
				wd.setWcode(rs.getString("wcode"));
				wd.setWname(rs.getString("wname"));
				wd.setWduration(rs.getString("wduration"));
				wd.setWprice(rs.getString("wprice"));
				webdevelopment.add(wd);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return webdevelopment;
	}

	public void deleteWebDevelopment(int wdid) {

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("delete from webdevelopment where wdid = ?");
			pstmt.setInt(1, wdid);
			pstmt.executeQuery();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public static WebDevelopmentBean getRecordById(int wdid) {
		WebDevelopmentBean wd = null;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from webdevelopment where wdid=?");
			ps.setInt(1, wdid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				wd = new WebDevelopmentBean();
				wd.setWdid(rs.getInt("wdid"));
				wd.setWcode(rs.getString("wcode"));
				wd.setWname(rs.getString("wname"));
				wd.setWduration(rs.getString("wduration"));
				wd.setWprice(rs.getString("wprice"));
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return wd;
	}

	
	public boolean updateWebDevelopment(WebDevelopmentBean bean) {


		try {
			Connection con = DBConnection.getConnection();
			 PreparedStatement pstmt = con.prepareStatement("update webdevelopment set wcode=?,wname=?,wduration=?,wprice=? where wdid=?");

			 
			pstmt.setString(1, bean.getWcode());
			pstmt.setString(2, bean.getWname());
			pstmt.setString(3, bean.getWduration());
			pstmt.setString(4, bean.getWprice());
			pstmt.setInt(5, bean.getWdid());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}

	public int countWebDevelopment() {
		// TODO Auto-generated method stub
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select count(*) as totalWd from webdevelopment");
			ResultSet rs = pstmt.executeQuery();
			rs.next();
				 
			return rs.getInt("totalWd");
				 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}
