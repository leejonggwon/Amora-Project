package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

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


	
	
	
	
	public int join(MemberDTO dto) {
		// TODO Auto-generated method stub
		int cnt = 0;

		getConnection();

		String sql = "INSERT INTO MSGMEMBER VALUES(?, ?, ?, ?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getPhone());
			psmt.setString(4, dto.getAddr());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			close();
		}
		return cnt;

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
				
				if(rs.next()) {
					String email = rs.getString("email");
					String pw = rs.getString("pw");
					String phone = rs.getString("phone");
					String addr = rs.getString("addr");
					
					info = new MemberDTO(email, pw, phone, addr);
				}
				

			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close();
			}
			return info;
		}
		
		
		// 업데이트 메소드
				// - 회정보가 있는 경우 nick반환
				// 없으면 nul을 반환
				public int update(MemberDTO changeInfo) {

					int cnt = 0;
					
					getConnection();
					
					String sql = " UPDATE MSGMEMBER SET PW = ?, PHONE = ?, ADDR = ? WHERE EMAIL = ? " ;
					
					
					
					try {
						
						psmt = conn.prepareStatement(sql);
						psmt.setString(1, changeInfo.getPw());
						psmt.setString(2, changeInfo.getPhone());
						psmt.setString(3, changeInfo.getAddr());
						psmt.setString(4, changeInfo.getEmail());
						
						cnt= psmt.executeUpdate();
								
						

					} catch (SQLException e) {
						e.printStackTrace();
					}finally {
						close();
					}
					return cnt;
				}
		
				
				public int delete(int ch_num) {
					
                    getConnection();
					
					String sql = " DELETE FROM MESSAGE WHERE NUM =?" ;
					
					try {
						psmt = conn.prepareStatement(sql);
						psmt.setInt(1, ch_num);
						psmt.executeUpdate();
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}finally {
						close();
					}
					
					
				}

				
				
		
		
}


