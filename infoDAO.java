package info.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

public class infoDAO {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	public infoDAO() {
		
		try {
			Class.forName(driver);
			System.out.println("오라클 드라이버 성공");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("오라클 드라이버 실패");
		}
	}
	///////////////////////////////connection
	public Connection getConnection()
	{
		Connection conn = null;
		
		try {
			conn = DriverManager.getConnection(url, "katatj", "skfo0762");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("커넥션 실패");
		}
		
		return conn;
	}
	/////////////////////////////////////insert
	public void infoInsert(infoDTO dto)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into info values(seq_info.nextval, ?, ?, sysdate)";
		conn = getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			//?, ? 에 대한 바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
			
			//update
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}
	////////////////////////////////////////select
	public Vector<infoDTO> getAllDatas()
	{
	Vector<infoDTO> list = new Vector<infoDTO>();
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from info order by num asc";
		conn = getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			//여러개의 데이터를 얻는 경우 while
			while(rs.next())
			{
				//반드시 while문 안에서 선언
				infoDTO dto = new infoDTO();
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setSdate(rs.getTimestamp("sdate"));
				
				//벡터에 추가
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
		
	}
	/////////////////////////////////수정하려는 하나의 데이터 찾기
	public infoDTO getData(String num)
	{
		infoDTO dto = new infoDTO();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from info where num=?";
		
		conn = getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			
			//  찾으려는 데이터 하나일 때는 if
			if(rs.next())
			{
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setSdate(rs.getTimestamp("sdate"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		} finally {
			} try {
				rs.close();
				conn.close();
				pstmt.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		return dto;
	}
	////////////////////////////////////////수정처리
	public void infoUpdate(infoDTO dto)
	{
	 Connection conn = null;
	 PreparedStatement pstmt = null;
	 
	 String sql = "update info set name=?, addr=? where num=?";
	 
	 conn = getConnection();
	 try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getName());
		pstmt.setString(2, dto.getAddr());
		pstmt.setString(3, dto.getNum());
		pstmt.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	 
	}
	////////////////////////////////////삭제처리
	public void infoDelete(String num)
	{
		 Connection conn = null;
		 PreparedStatement pstmt = null;
		 
		 String sql = "delete from info where num=?";
		 
		 conn = getConnection();
		 try {
			pstmt = conn.prepareStatement(sql);
	
			pstmt.setString(1, num);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		 
		}
	
	/////////////////////////////////////////////////
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		infoDAO dao = new infoDAO();
	}


}
