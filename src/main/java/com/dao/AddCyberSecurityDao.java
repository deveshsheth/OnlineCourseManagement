package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.CyberSecurityBean;

import com.util.DBConnection;

public class AddCyberSecurityDao {

	public void insertCyberSecurity(CyberSecurityBean Bean) {
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con
					.prepareStatement("insert into cybersecurity(ccode,cname,cduration,cprice) values(?,?,?,?)");
			// pstmt.setInt(1, Bean.getDsid());
			pstmt.setString(1, Bean.getCcode());
			pstmt.setString(2, Bean.getCname());
			pstmt.setString(3, Bean.getCduration());
			pstmt.setString(4, Bean.getCprice());

			pstmt.executeUpdate();

			System.out.println("CyberSecurity Record Inserted....");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<CyberSecurityBean> listCyberSecurity() {
		ArrayList<CyberSecurityBean> cybersecurity = new ArrayList<CyberSecurityBean>();
		CyberSecurityBean ds = null;
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from cybersecurity");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ds = new CyberSecurityBean();
				ds.setCsid(rs.getInt("csid"));
				ds.setCcode(rs.getString("ccode"));
				ds.setCname(rs.getString("cname"));
				ds.setCduration(rs.getString("cduration"));
				ds.setCprice(rs.getString("cprice"));
				cybersecurity.add(ds);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cybersecurity;
	}

	public void deleteCyberSecurity(int csid) {

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("delete from cybersecurity where csid = ?");
			pstmt.setInt(1, csid);
			pstmt.executeQuery();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public static CyberSecurityBean getRecordById(int csid) {
		CyberSecurityBean cs = null;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from cybersecurity where csid=?");
			ps.setInt(1, csid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				cs = new CyberSecurityBean();
				cs.setCsid(rs.getInt("csid"));
				cs.setCcode(rs.getString("ccode"));
				cs.setCname(rs.getString("cname"));
				cs.setCduration(rs.getString("cduration"));
				cs.setCprice(rs.getString("cprice"));

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return cs;
	}

	public boolean updateCyberSecurity(CyberSecurityBean bean) {

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con
					.prepareStatement("update cybersecurity set ccode=?,cname=?,cduration=?,cprice=? where csid=?");

			pstmt.setString(1, bean.getCcode());
			pstmt.setString(2, bean.getCname());
			pstmt.setString(3, bean.getCduration());
			pstmt.setString(4, bean.getCprice());
			pstmt.setInt(5, bean.getCsid());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}

	public int  countCyberSecurity() {
		 

		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select count(*) as totalCs from cybersecurity");
			ResultSet rs = pstmt.executeQuery();
			rs.next();
				 
				return rs.getInt("totalCs");
				 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}
