package mysql;

import java.sql.DriverManager;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;


public class HOGUDAO {
	
	Connection conn =null;
	String url ="jdbc:mysql://localhost:3306/hogu";
	String user = "root";
	String pass = "mysql";
	
	//DB연결
	private Connection openConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection)DriverManager.getConnection(url,user,pass);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	//DB연결해제
	private void closeConnection() {
		try {
			if(conn != null) {
				conn.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//신규회원정보 추가
	public int insertMember(DB member) {
		PreparedStatement pstm = null;
		String query = "insert into hogu values(?,?,?,?,?,?);";
		int res=0;
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, member.getId());
				pstm.setString(2, member.getPw());
				pstm.setString(3, member.getName());
				pstm.setString(4, member.getTel());
				pstm.setString(5, member.getEmail());
				pstm.setString(6, member.getMagic());
				
			
			res = pstm.executeUpdate();
				
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return res;
	}
	
	//기존회원삭제
	public int removeMember(String id) {
		PreparedStatement pstm =null;
		String query ="delete from hogu where id=?;";
		int res=0;
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, id);
			res=pstm.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return res;
	}
	
	//기존회원수정
	public int updateMember(DB member) {
		PreparedStatement pstm =null;
		String query ="update hogu set pw=?, name=?, tel=?, email=? where id=?";
		int res=0;
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, member.getId());
				pstm.setString(2, member.getPw());
				pstm.setString(3, member.getName());
				pstm.setString(4, member.getTel());
				pstm.setString(5, member.getEmail());
				pstm.setString(6, member.getMagic());
				
			res = pstm.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return res;
	}
	//회원가입여부조회
	public boolean isMember(String id, String pass) {
		boolean res = false;
		PreparedStatement pstm =null;
		String query ="select * from hogu where id=? and pw=?;";
		openConnection();
		
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, id);
				pstm.setString(2, pass);
				
			ResultSet rs=pstm.executeQuery();
			res = rs.next();
			rs.close();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return res;
	}
	
	public boolean isMembers(String id) {
		boolean res = false;
		PreparedStatement pstm =null;
		String query ="select * from hogu where id=?;";
		openConnection();
		
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, id);
				
			ResultSet rs=pstm.executeQuery();
			res = rs.next();
			rs.close();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return res;
	}
	//id로 특정회원 조회
	public 	DB getMember(String id) {
		
		DB member = new DB();
		PreparedStatement pstm = null;
		String query ="select *from hogu where id=?";
		
		openConnection();
		try {
			pstm =(PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, id);
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setTel(rs.getString("tel"));
				member.setEmail(rs.getString("email"));
				member.setMagic(rs.getString("magic"));
			}
			rs.close();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return member;
	}
	//전체회원조회
	public ArrayList<DB> getDBList(){
		ArrayList<DB> datas = new ArrayList<DB>();
		Statement stmt = null;
		String query = "select * from hogu order by id desc";
		
		openConnection();
		try {
			
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				DB member = new DB();
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setTel(rs.getString("tel"));
				member.setEmail(rs.getString("email"));
				member.setMagic(rs.getString("magic"));
				
				datas.add(member);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		
		return datas;
	}
	
	
	
}
