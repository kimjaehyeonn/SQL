package org.scoula.jdbc_ex.test;






import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.scoula.jdbc_ex.common.JDBCUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class ConnectionTest {
    @Test
    @DisplayName("데이터베이스 접속")
     void testConnection() throws ClassNotFoundException {
        String url = "jdbc:mysql://localhost:3306/jdbc_ex";
        String id = "scoula";
        String password = "1234";

        Class.forName("com.mysql.cj.jdbc.Driver");

        try {
            Connection conn = DriverManager.getConnection(url,id,password);
            System.out.println("db 접속 성공");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Test
    void testConnection2()  {
        Connection conn = JDBCUtil.getConnection();
        Assertions.assertNull(conn);
            JDBCUtil.close();
        }


    }


