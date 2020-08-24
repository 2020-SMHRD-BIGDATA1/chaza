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

    public PlaceDTO getplace(String place_name) {
    	
    	getConnection();
    	
    	PlaceDTO placedto=null;
 
    	String sql="select * from place where place_name=?";
    	try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, place_name);
	    	rs=psmt.executeQuery();
	    	
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
    
    
    	try {
			if(rs.next()) {
			
			placedto= new PlaceDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));	
		
			
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
			PlaceDTO placedto = new PlaceDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
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
			getConnection();

			try {
				String sql;
				if(city.equals("전체")) {
					sql = "select * from PLACE";
				}else {
					sql = "select * from PLACE where PLACE_ADDR = ?";
				}
				
				psmt = conn.prepareStatement(sql);
				if(!city.equals("전체")) {
					psmt.setString(1, city);
				}
				rs = psmt.executeQuery();
				while (rs.next()) {

					String place_name = rs.getString(1);
					String place_address = rs.getString(2);
					String toilet = rs.getString(3);
					String sink = rs.getString(4);
					String water = rs.getString(5);
					String score = rs.getString(6);
					
					PlaceDTO dto = new PlaceDTO(place_name, place_address, toilet, sink, water, score);				
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
