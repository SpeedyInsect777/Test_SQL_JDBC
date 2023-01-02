package com.cydeo.Test01_JDBC_JUNIT5_Intro;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class Test01 {
    String dbURL = "jdbc:oracle:thin:@3.82.233.195 :1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";

    @Test
    public void test01() throws SQLException {
        Connection connection = DriverManager.getConnection(dbURL, dbUserName, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery
                ("select *from regions");//CTRL+ENTER to connect to DATABASE
        ResultSetMetaData resultSetMetaData = resultSet.getMetaData();


        int numColumns = resultSetMetaData.getColumnCount();
        while (resultSet.next()) {

            for (int i = 1; i < numColumns + 1; i++) {

                System.out.println(resultSet.getString(i) + " | " + resultSetMetaData.getColumnName(i));
/
            }
        }

        resultSet.close();
        statement.close();
        connection.close();
    }
}
