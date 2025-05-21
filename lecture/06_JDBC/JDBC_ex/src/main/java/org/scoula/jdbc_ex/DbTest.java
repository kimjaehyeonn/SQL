package org.scoula.jdbc_ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbTest {
    public static void main(String[] args) {
        Connection con = null;
        PreparedStatement ps = null; // SQL 문으로 인식
        try {
            // 1. 드라이버 설정
            Class.forName("com.mysql.cj.jdbc.Driver");  // 없으면 ClassnotFoundException 발생
            System.out.println("1. 드라이버 설정 성공..");
            // 2. 데이터베이스 연결
            String url = "jdbc:mysql://localhost:3306/jdbc_ex";  // jdbc:mysql://host:port:dbName
            String user = "scoula";
            String password = "1234";
            con = DriverManager.getConnection(url, user, password);  // DB에 연결 세션을 만듦
            System.out.println("2. db 연결 성공.");
            // 3. SQL 문 객체생성
            String sql = "insert into users values ('win', 'win', 'win', 'USER')";
            ps = con.prepareStatement(sql);
            System.out.println("3. sql문 객체 생성 성공.");
            // 4. SQL 문실행및결과출력
            int result = ps.executeUpdate();
            System.out.println("4. sql문 전송 성공, 결과>> " + result);   // 1이 와야됨.
        } catch (ClassNotFoundException e) {
            System.out.println("드라이버 로드실패: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("DB 실패: " + e.getMessage());
        } finally {
            // 자원해제(반드시 실행)
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                System.out.println("자원해제실패: " + e.getMessage());
            }
        }
    }
}