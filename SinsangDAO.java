package sinsang.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class SinsangDAO {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	
	public SinsangDAO() {
		// TODO Auto-generated constructor stub
	
			try {
				Class.forName(driver);
				System.out.println("����Ŭ ����̹� ����");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				System.out.println("����Ŭ ����̹� ����");
			}
	}
	


	////Ŀ����
	public Connection getConnection()
	{
		Connection conn = null;
		
		try {
			conn = DriverManager.getConnection(url, "katatj", "skfo0762");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Ŀ�ؼ� ����");
		}
		
		return conn;
	}
	
	/////////////////////insert
	public void sinsangInsert(SinsangDTO dto)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into sinsang values(seq1.nextval,?,?,?,?)";
		
		conn = getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			
			//���ε� �� ��
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getBlood());
			pstmt.setString(3, dto.getHp());
			pstmt.setString(4, dto.getBirth());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}
	///////////////////////��ü������ �ޱ�
	public Vector<SinsangDTO> getAllData()
	{
		Vector<SinsangDTO>list = new Vector<SinsangDTO>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sql = "select * from sinsang order by num asc";
		
		conn = getConnection();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				SinsangDTO dto = new SinsangDTO();
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setBlood(rs.getString("blood"));
				dto.setHp(rs.getString("hp"));
				dto.setBirth(rs.getString("birth"));
				
				list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} return list;
	}
	
	
	///////////////�����ϱ��� �����Ϸ��� �ϳ��� ������ ��������
	public SinsangDTO getData(String num)
	{
		SinsangDTO dto = new SinsangDTO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from sinsang where num=?";
		
		conn = getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setBlood(rs.getString("blood"));
				dto.setHp(rs.getString("hp"));
				dto.setBirth(rs.getString("birth"));
				
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
		} return dto;
		
				
	}
	
	
	////////////////////////////////////////////
	public static void main(String[] args) {
		
		SinsangDAO dao = new SinsangDAO();
		
	}
}

