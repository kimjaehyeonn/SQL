package jdbc.common;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class JDBCUtil {
    // 싱글톤 패턴
    static Connection conn = null;

    public static Connection getConnection() {
        // 이미 conn 객체가 있다면 존재하는 객체 반환
        if(conn != null) return conn;

        // properties 파일 읽어오기 위한 객체 준비
        Properties properties = new Properties();

        try {
            // properties.load: key-value 형태로 스트림으로 읽어온 데이터 저장.
            // getResourceAsStream : 파일 내용을 InputStream으로 가져옴
            // 경로 없을 수 있으니까 try/catch로
            properties.load(JDBCUtil.class.getResourceAsStream("/application.properties"));
            System.out.println("properties" + properties);
            String driver = properties.getProperty("driver");
            String url = properties.getProperty("url");
            String user = properties.getProperty("user");
            String password = properties.getProperty("password");

            Class.forName(driver);
            // conn = DriverManager.getConnection(url,user, password);
            conn = DriverManager.getConnection(url,properties);
            System.out.println("연결성공 : " + conn);

        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return conn;

    }

    // db 연결 끊을 때 쓰는 메서드
public static void close(){
    try {
        if(conn !=null){
        conn.close();
        conn = null;  // 초기화까지
        }
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }

}
}
