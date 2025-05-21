package jdbc.common;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.*;

class JDBCUtilTest {
    @Test
    @DisplayName("DB 접속 연습")
    void testConnection() throws ClassNotFoundException {
    /*
    * 1. 연결 만들기 (3가지 필요!)
    * -> url(어떤 db에 접속할 건지), 사용자 계정(id), 비밀번호(password)
    * */
        String url = "jdbc:mysql://localhost:3306/testdb";
        String id = "root";
        String password = "1234";

        // 드라이버 설정( 6 버전 이후로 굳이 안써줘도 됨)
         Class.forName("com.mysql.cj.jdbc.Driver");

        try {
            Connection conn = DriverManager.getConnection(url, id, password);
            System.out.println("연결 성공");
            // 객체 생성 여부 확인
            assertNotNull(conn);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}