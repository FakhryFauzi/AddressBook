package addressbook;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Owner
 */
public class Database {

    
    //Change these to the database you are using
    String URL = "jdbc:mysql//127.0.0.1.3306/";
    String USERNAME = "root";
    String PASSWORD = "12345678";

    Connection con1 = null;

    public Database() {
        try{
            con1 = DriverManager.getConnection(URL,USERNAME,PASSWORD);
            System.out.println("Connection was made to database");
        }catch(SQLException d){
            System.out.println(d);
        }
    }
    
    //close the database after using it 
    public void closeDatabase() throws SQLException{
         System.out.println("closing Database");
         con1.close();
    }

}
