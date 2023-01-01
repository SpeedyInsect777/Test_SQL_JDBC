package com.cydeo.jdbcTest01;

import java.sql.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TestConnection {
    public static void main(String[] args) throws SQLException {

        //Database>Data Source Properties
        String dbURL = "jdbc:oracle:thin:@3.82.233.195 :1521:XE";
        String dbUserName = "hr";
        String dbPassword = "hr";

        //DriverManager class connecting Java with DataBase
        Connection connection = DriverManager.getConnection(dbURL, dbUserName, dbPassword);

        //Helps to execute queries
        Statement statement = connection.createStatement();

//ResultSet stores ONLY data after Execution.(NO TABLE Info ONLY DATA)
ResultSet resultSet = statement.executeQuery("select * from regions");//CTRL+ENTER to connect to DATABASE
/*
//Row pointer , starts from 0 (Before 1st row)
        System.out.println("======= ROW 1 ========");
        resultSet.next();
//resultSet.getInt(columnLabel/or INDEX);//returns Column Position -> Indexes start from 1
        System.out.println(resultSet.getInt(1));
        System.out.println(resultSet.getString(1));
        System.out.println(resultSet.getString("REGION_ID"));
        System.out.println(resultSet.getString(1));
        System.out.println(resultSet.getString( "REGION_NAME"));

        System.out.println("======= ROW 2 ========");

        resultSet.next();
        System.out.println(resultSet.getInt(1));
        System.out.println(resultSet.getString(1));
        System.out.println(resultSet.getString("REGION_ID"));
        System.out.println(resultSet.getString(1));
        System.out.println(resultSet.getString( "REGION_NAME"));

        System.out.println("======= ROW 3 ========");

        resultSet.next();
        System.out.println(resultSet.getInt(1));
        System.out.println(resultSet.getString(1));
        System.out.println(resultSet.getString("REGION_ID"));
        System.out.println(resultSet.getString(1));
        System.out.println(resultSet.getString( "REGION_NAME"));

        System.out.println("======= ROW 4 ========");

        resultSet.next();
        System.out.println(resultSet.getInt(1));
        System.out.println(resultSet.getString(1));
        System.out.println(resultSet.getString("REGION_ID"));
        System.out.println(resultSet.getString(1));
        System.out.println(resultSet.getString( "REGION_NAME"));
*/
        List<String> dataDB=new ArrayList<>();
        while (resultSet.next()) {
            dataDB.add(resultSet.getString(2));
            System.out.println(resultSet.getInt(1) + "  < | >  " + resultSet.getString(2));
        }
        System.out.println(dataDB);
        /*
        close connections: After getting DATA close connections ALWAYS! (for Security Purpose !)
         1st=> resultSet
            2nd=> statement
              3rd=>connection
        */
        resultSet.close();
        statement.close();
        connection.close();


    }
}
