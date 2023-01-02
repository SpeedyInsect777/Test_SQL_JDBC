package com.cydeo.MySQL_Test01;

import com.cydeo.db_util.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class MySQLTest {

    String dbURL ="jdbc:mysql://34.230.35.214:3306/library2";
    String dbUserName ="library2_client";
    String dbPassword = "6s2LQQTjBcGFfDhY";


    @Test
    public void test01(){

//STEP 1: CREATE Connection
        DB_Util.createConnection(dbURL,dbUserName,dbPassword);


        DB_Util.runQuery("select count(*) from books");

        String expectedBookCount = DB_Util.getFirstRowFirstColumn();

 String actualBookCount = "6241";

        Assertions.assertEquals(expectedBookCount,actualBookCount);

//LAST CLose Database Driver !
DB_Util.destroy();
    }
}
