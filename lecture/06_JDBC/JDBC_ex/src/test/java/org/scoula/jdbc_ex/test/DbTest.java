package org.scoula.jdbc_ex.test;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
// 1, 2 단계는 CRUD 모두 공통 -> common 패키지로 관리
public class DbTest {
    // 단위테스트(UNIT TEST)
    // 기능 단위 --> 메서드 구현.
    // 개별 메서드별로 테스트
    // JUnit 5 라이브러리 사용
    // 본 코드를 하기 전, 테스트를 충분히 거치고 난 후
    // 리팩토링하여 본 코드를 하면 에러율 낮아지고, 효과적 코딩 가능.
    // TDD 방법론.
    @Test // 필수. 메서드 마다 입력
    @DisplayName("DB 연결 테스트 결과") // 어떤 테스트인지 설명. 선택사항
    public void test1 () throws ClassNotFoundException, SQLException {
        Connection con = null;

        // 1. 드라이버 설정
        Class.forName("com.mysql.cj.jdbc.Driver");  // 없으면 ClassnotFoundException 발생
        System.out.println("1. 드라이버 설정 성공..");
        // 2. 데이터베이스 연결
        String url = "jdbc:mysql://localhost:3306/jdbc_ex";  // jdbc:mysql://host:port:dbName
        String user = "jdbc_ex";
        String password = "1234";
        con = DriverManager.getConnection(url, user, password);  // DB에 연결 세션을 만듦
        System.out.println("2. db 연결 성공.");
        // con에 연결이 성공하면 연결통로에 해당하는 객체가
        // 메모리에 생김(주소를 가짐.)
        // con에 연결이 실패하면 연결통로에 해당하는 객체가
        // 메모리에 안생김(null을 가짐)
        Assertions.assertNull(con);

    }
}
