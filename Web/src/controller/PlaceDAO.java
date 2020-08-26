package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

public class PlaceDAO {
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

    public PlaceDTO getplace(String name) {
    	
    	getConnection();
    	
    	PlaceDTO placedto=null;
 
    	String sql="select * from place where place_name=?";
    	try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, name);
	    	rs=psmt.executeQuery();
	    	
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
    
    	try {
			if(rs.next()) {
			
			placedto= new PlaceDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),
					rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));	
		
			
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
    	
    	close();
		}
    	
        return placedto;
    	
    	
    }
    
    
    public ArrayList<PlaceDTO> getall()//String //addr) {
    		{
    	ArrayList<PlaceDTO> list= new ArrayList<PlaceDTO>();
    	getConnection();
    	
    
    	try {
			
    		//if(addr.equals("전체")) {
    	    	String sql= "select * from place";
    	    	psmt = conn.prepareStatement(sql);
    	    	//}
				/*
				 * else { String sql= "select * from place where place_addr=?"; psmt =
				 * conn.prepareStatement(sql); psmt.setString(1, addr); }
				 */
    		
			rs = psmt.executeQuery();
			while(rs.next()) {
			PlaceDTO placedto = new PlaceDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),
					rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
			list.add(placedto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
    	return list;
    }

	public ArrayList<PlaceDTO> selectCity(String city) {

			ArrayList<PlaceDTO> list = new ArrayList<PlaceDTO>();
			
			
			String sql;
			try {
				if(city.equals("전체")) {
					getConnection();
					sql = "select * from PLACE";
					psmt = conn.prepareStatement(sql);
					rs = psmt.executeQuery();
				}else {
					getConnection();
					sql = "select * from PLACE where PLACE_CAT = ?";
					psmt = conn.prepareStatement(sql);
					psmt.setString(1, city);
					rs = psmt.executeQuery();
					System.out.println("널임둥? "+rs.getRow());
				}
				
				while (rs.next()) {
					System.out.println("while문으로 넘어오는지 확인");

					PlaceDTO dto = new PlaceDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),
							rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));		
					
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close();
			}

			return list;
	}
	

	

	
}
