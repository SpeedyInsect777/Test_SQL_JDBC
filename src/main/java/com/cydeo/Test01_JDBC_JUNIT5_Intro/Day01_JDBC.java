package com.cydeo.Test01_JDBC_JUNIT5_Intro;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Day01_JDBC {
    String dbURL = "jdbc:oracle:thin:@3.82.233.195 :1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";

@Test
    public void Task1() throws SQLException {

    Connection connection = DriverManager.getConnection(dbURL, dbUserName, dbPassword);
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery("select * from departments where manager_id is not null order by location_id");//CTRL+ENTER to connect to DATABASE
   // List<Integer> locationID = new ArrayList<>();
//
    System.out.println("========== DEPARTMENTS ==========");
    while (resultSet.next()) {
        //locationID.add(resultSet.getInt(4));
        System.out.println(resultSet.getInt(1)+" - "+resultSet.getString(2)+" - "+resultSet.getString(3)+" - "+resultSet.getInt(4));


}
    resultSet = statement.executeQuery("select *from regions");
        //  System.out.println(locationID.stream().sorted().collect(Collectors.toList()));
    System.out.println("======= REGIONS =======");
    while(resultSet.next()){

        System.out.println(resultSet.getInt(1)+" - "+resultSet.getString(2));
    }
        resultSet.close();
        statement.close();
        connection.close();
    }
}
//