package com.cydeo.Test01_JDBC_JUNIT5_Intro;

import com.cydeo.db_util.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class DB_util_Test01 {

    @Test
    public void test01() {
//creating connection
        DB_Util.createConnection();

        //run query
        DB_Util.runQuery("select first_name,last_name,salary from employees");

        System.out.println("First Row First Cell");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println("All Column Name");
        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println(" ALl First names");
        System.out.println(DB_Util.getColumnDataAsList(1));

        System.out.println("Numbers of Rows");
        System.out.println(DB_Util.getRowCount());

        System.out.println("As MAP");
        System.out.println(DB_Util.getRowMap(2));

        System.out.println("As LIST");
        System.out.println(DB_Util.getRowDataAsList(2));

        System.out.println("As LIST of MAP");
        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        for (Map<String, String> eachRow : allRowAsListOfMap) {
            System.out.println(eachRow);
        }



        DB_Util.destroy();
    }
}
