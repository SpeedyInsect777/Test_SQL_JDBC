package com.cydeo.Test01_JDBC_JUNIT5_Intro;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class Day03_MetaData {
    String dbURL = "jdbc:oracle:thin:@3.82.233.195 :1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";

    @Test
    public void test01() throws SQLException {

        Connection connection = DriverManager.getConnection(dbURL, dbUserName, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("select *from employees");//CTRL+ENTER to connect to DATABASE

        //DataBaseMetaData -> returns info about current DATABASE
        DatabaseMetaData metaData = connection.getMetaData();
        System.out.println(metaData.getUserName());
        System.out.println(metaData.getDriverVersion());
        System.out.println(metaData.getDriverName());

        System.out.println("====RESULTMETADAT=======");
        //ResultSetMetaData
        //Provides Info about TABLE UPPER SIDE (columnNames,columnCounts etc)
        ResultSetMetaData resultSetMetaData= resultSet.getMetaData();

        //returns numbers of column as INT
        int columnCount = resultSetMetaData.getColumnCount();
        System.out.println(columnCount);
//returns column value as STRING
        String columnFour = resultSetMetaData.getColumnName(4);

        System.out.println(columnFour);

        System.out.println(resultSetMetaData.getColumnLabel(4));
        System.out.println("=============== FOR LOOP ===============");
        for (int i = 1; i <= columnCount; i++) {
            System.out.println(resultSetMetaData.getColumnName(i));
        }
        resultSet.close();
        statement.close();
        connection.close();

    }
}
