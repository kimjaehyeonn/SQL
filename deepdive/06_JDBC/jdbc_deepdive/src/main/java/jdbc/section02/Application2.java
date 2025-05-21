package jdbc.section02;

import jdbc.common.JDBCUtil;

import java.sql.*;


// select 하는 application2
public class Application2 {
    public static void main(String[] args) {
        Connection conn = JDBCUtil.getConnection();
        // 쿼리문을 저장하고 실행하는 기능을 하는 용도의 인터페이스
        PreparedStatement pst = null;
        /*
        * PreparedStatement
        * - Statement를 상속한 interface
        * - 완성된 SQL과 미완성된 SQL 둘다 사용가능
        *
        * 위치홀더(placeholder) : ?
        * - SQL 문에서 실제 값이 들어갈 자리를 미리 표시해놓는 기호
        * */


        // select 결과집합을 받아올 용도의 인터페이스
        ResultSet rs = null;

        // Select 문
        try {
            String query = "select*from usertbl where  name = ? "; // 위치홀더(?)

            // connection을 이용해 preparestatement 객체 생성
            //  SQL 문을 인자로 받는다.
            pst = conn.prepareStatement(query);
            String name = "김경호";
            // 위치홀더에 값 넣어주기 (placeholder index, 넣을 값)
            pst.setString(1,name); //

            rs = pst.executeQuery();
            // key-value 쌍으로 들어오기에 while 이용
            while (rs.next()) {
                System.out.println(rs.getString("userID") + "r" + rs.getString("name"));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            try {
                pst.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            JDBCUtil.close();
        }
    }
}
