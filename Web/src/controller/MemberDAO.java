package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import controller.MemberDTO;


public class MemberDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int join(MemberDTO dto) {

		int cnt = 0;

		try {
			getConnection();
			String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMember_id());
			psmt.setString(2, dto.getMember_pw());
			psmt.setString(3, dto.getMember_gender());
			psmt.setString(4, dto.getMember_tel());
			psmt.setString(5, dto.getMember_addr());
			psmt.setString(6, dto.getMember_car_own());
			psmt.setString(7, dto.getMember_car_model());
			psmt.setString(8, dto.getCamping_case());
			psmt.setString(9, dto.getCamping_member());
			psmt.setString(10, dto.getCamping_count());
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	
	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		
		getConnection();
		
		try {
			String sql = "SELECT * FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_PW = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMember_id());
			psmt.setString(2, dto.getMember_pw());
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				
				String member_id = rs.getString(1);
				
				String member_gender = rs.getString(3);
				String member_tel = rs.getString(4);
				String member_addr = rs.getString(5);
				String member_car_own = rs.getString(6);
				String member_car_model = rs.getString(7);
				String camping_case = rs.getString(8);
				String camping_member = rs.getString(9);
				String camping_count = rs.getString(10);
				
				info = new MemberDTO(member_id, member_gender, member_tel, member_addr, member_car_own, member_car_model, camping_case, camping_member, camping_count);
			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return info;
	}

	
	
	
}
