package com.cydeo.Test01_JDBC_JUNIT5_Intro;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Test02 {

    String dbURL = "jdbc:oracle:thin:@3.82.233.195 :1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";


    @Test
    public void test01() throws SQLException {
        Connection connection = DriverManager.getConnection(dbURL, dbUserName, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery
                ("select first_name,Last_name,salary from employees");//CTRL+ENTER to connect to DATABASE
        ResultSetMetaData resultSetMetaData = resultSet.getMetaData();


        List<Map<String, Object>> mapList = new ArrayList<>();

        while (resultSet.next()) {
            Map<String, Object> myRowMap = new HashMap<>();
            for (int i = 1; i <= resultSetMetaData.getColumnCount(); i++) {
                myRowMap.put( resultSetMetaData.getColumnName(i),resultSet.getString(i));

            }
            mapList.add(myRowMap);
        }


        System.out.println(mapList);

        resultSet.close();
        statement.close();
        connection.close();
    }
}
