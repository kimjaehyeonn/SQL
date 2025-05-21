package jdbc.section02;

import jdbc.common.JDBCUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


// select 하는 application
public class Application1 {
    public static void main(String[] args) {
        Connection conn = JDBCUtil.getConnection();
        // 쿼리문을 저장하고 실행하는 기능을 하는 용도의 인터페이스
        Statement st = null;

        // select 결과집합을 받아올 용도의 인터페이스
        ResultSet rs = null;

        // Select 문
        try {
            // connection을 이용해 statement 객체 생성
            st = conn.createStatement();

            String query = "select*from usertbl";

            rs = st.executeQuery(query);
            // key-value 쌍으로 들어오기에 while 이용
            while (rs.next()) {
                System.out.println(rs.getString("userID") + "r" + rs.getString("name"));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (st != null) st.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            try {
                st.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            JDBCUtil.close();
        }
    }
}
