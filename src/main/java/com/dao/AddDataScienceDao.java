package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.bean.DataScienceBean;
import com.util.DBConnection;

public class AddDataScienceDao {

	public void insert(DataScienceBean Bean) {
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con
					.prepareStatement("insert into datascience(dcode,dname,dduration,dprice) values(?,?,?,?)");
			// pstmt.setInt(1, Bean.getDsid());
			pstmt.setString(1, Bean.getDcode());
			pstmt.setString(2, Bean.getDname());
			pstmt.setString(3, Bean.getDduration());
			pstmt.setString(4, Bean.getDprice());

			pstmt.executeUpdate();

			System.out.println("DataScience Record Inserted....");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<DataScienceBean> listDataScience() {
		ArrayList<DataScienceBean> datascience = new ArrayList<DataScienceBean>();
		DataScienceBean ds = null;
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from datascience");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ds = new DataScienceBean();
				ds.setDsid(rs.getInt("dsid"));
				ds.setDcode(rs.getString("dcode"));
				ds.setDname(rs.getString("dname"));
				ds.setDduration(rs.getString("dduration"));
				ds.setDprice(rs.getString("dprice"));
				datascience.add(ds);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return datascience;
	}

	public void deleteDataScience(int dsid) {

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("delete from datascience where dsid = ?");
			pstmt.setInt(1, dsid);
			pstmt.executeQuery();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public static DataScienceBean getRecordById(int dsid) {
		DataScienceBean ds = null;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from datascience where dsid=?");
			ps.setInt(1, dsid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ds = new DataScienceBean();
				ds.setDsid(rs.getInt("dsid"));
				ds.setDcode(rs.getString("dcode"));
				ds.setDname(rs.getString("dname"));
				ds.setDduration(rs.getString("dduration"));
				ds.setDprice(rs.getString("dprice"));
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return ds;
	}

	public boolean updateDataScience(DataScienceBean bean) {

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con
					.prepareStatement("update datascience set dcode=?,dname=?,dduration=?,dprice=? where dsid=?");

			pstmt.setString(1, bean.getDcode());
			pstmt.setString(2, bean.getDname());
			pstmt.setString(3, bean.getDduration());
			pstmt.setString(4, bean.getDprice());
			pstmt.setInt(5, bean.getDsid());
			pstmt.executeUpdate();
			System.out.println(bean.getDsid());
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}
	
	public int  countDataScience() {
		 
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select count(*) as totalDs from datascience");
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			return rs.getInt("totalDs");
				 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}