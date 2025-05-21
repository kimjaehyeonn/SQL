package jdbc.section01;

import jdbc.common.JDBCUtil;

import java.sql.Connection;

// 연결 확인 Application
public class Application {
    public static void main(String[] args) {
        Connection connection = JDBCUtil.getConnection();
    }
}
