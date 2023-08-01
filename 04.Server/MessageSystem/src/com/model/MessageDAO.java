package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MessageDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	// 데이터베이스 연결메소드
	public void getConnection() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "shopping";
			String db_pw = "12345";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 체크하세요");
		} catch (SQLException e) {
			e.printStackTrace();
			System.err.println("DB에 필요한 정보가 맞는지 체크하세요");
		}

	}

	// 종료메소드
	public void close() {
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

	// 로그인 메소드
	// - 회정보가 있는 경우 nick반환
	// 없으면 nul을 반환
	public MemberDTO login(MemberDTO dto) {

		MemberDTO info = null;

		getConnection();

		String sql = " SELECT * FROM MSGMEMBER WHERE EMAIL = ? AND PW = ?";

		try {

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());

			rs = psmt.executeQuery();

			if (rs.next()) {
				String email = rs.getString("email");
				String pw = rs.getString("pw");
				String phone = rs.getString("phone");
				String addr = rs.getString("addr");

				info = new MemberDTO(email, pw, phone, addr);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return info;
	}

	public int insert(MessageDTO dto) {

		int cnt = 0;

		getConnection();
		String sql = "INSERT INTO MESSAGE VALUES(MSG_NUM.NEXTVAL, ?, ?, ?, SYSDATE)";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getSend_name());
			psmt.setString(2, dto.getReceive_email());
			psmt.setString(3, dto.getContent());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {
			close();
		}

		return cnt;

	}

	public ArrayList<MessageDTO> select(String email) {

		ArrayList<MessageDTO> list = new ArrayList<>();

		getConnection();

		String sql = "SELECT * FROM MESSAGE WHERE RECEIVE_EMAIL = ? ORDER BY SEND_DATE DESC"; 

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int num = rs.getInt("num");
				String send_name = rs.getString("send_name");
				String receive_email = rs.getString("receive_email");
				String content = rs.getString("content");
				String send_date = rs.getString("send_date");

				MessageDTO dto = new MessageDTO(num, send_name, receive_email, content, send_date);
				list.add(dto);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return list;

	}

	
	
	
	public void allDelete(String email) {
		getConnection();
		
		String sql = "DELETE FROM MESSAGE WHERE RECEIVE_EMAIL = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
	}
}
	

	

