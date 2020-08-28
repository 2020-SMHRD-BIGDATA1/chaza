package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReviewDAO {

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

	public ArrayList<ReviewDTO> getall() {
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		getConnection();

		try {

			String sql = "select * from review";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				ReviewDTO reviewdto = new ReviewDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),rs.getString(10),
						rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14));
				list.add(reviewdto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public ReviewDTO getinfo(String number) {
		getConnection();
		ReviewDTO reviewdto = null;
		String sql = "select * from review where review_number=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, number);
			rs = psmt.executeQuery();
			if (rs.next()) {
				
			System.out.println(rs.getString(11));
			
				reviewdto = new ReviewDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),rs.getString(10),
						rs.getString(11),rs.getString(14));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return reviewdto;
	}

	public int write(ReviewDTO dto) {

		int cnt = 0;

		try {
			getConnection();
			String sql = "INSERT INTO REVIEW VALUES(?,?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(3, dto.getPlace_name());
			psmt.setString(5, dto.getStart_location());
			psmt.setString(6, dto.getDest_location());
			psmt.setString(7, dto.getTravel_time());
			psmt.setString(8, dto.getBreak_time());
			psmt.setString(9, dto.getReview_score());
			psmt.setString(10, dto.getReview_title());
			psmt.setString(11, dto.getReview_contents());
			psmt.setString(14, dto.getReview_image());
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	
	
}
