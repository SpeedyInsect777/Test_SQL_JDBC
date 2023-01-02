package com.cydeo.Test01_JDBC_JUNIT5_Intro;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class Day01_Navigation {
    String dbURL = "jdbc:oracle:thin:@3.82.233.195 :1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";

    @Test
    public void Test01 () throws SQLException {
        Connection connection = DriverManager.getConnection(dbURL, dbUserName, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("select first_name, last_name from employees");

        //First row
        resultSet.next();
        System.out.println(resultSet.getString(1)+"  -/-  "+resultSet.getString(2));

//Jumping to last row
        resultSet.last();
        System.out.println(resultSet.getString(1)+"  -/-  "+resultSet.getString(2));


        //returns current row number returns int

int currentRow = resultSet.getRow();
        System.out.println(currentRow);
//jumps to given row returns boolean
        boolean moved = resultSet.absolute(10);
        System.out.println(moved);

        System.out.println(resultSet.getRow());

        //moves to previews row returns TRUE, if it moved before 1st row returns false ! Return type BOOLEAN
        System.out.println("current row: "+resultSet.getRow());
        boolean previews = resultSet.previous();
        System.out.println("after applying previews row: "+resultSet.getRow());
        System.out.println(previews);

        //jumps to the 1st row
        resultSet.first();
        //jumps to before 1st
        resultSet.beforeFirst();



        resultSet.close();
        statement.close();
        connection.close();
    }
}
