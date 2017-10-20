
package dbhelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cars;


public class ReadRecord {
    
    private Connection conn;
    private ResultSet results;
    
    private Cars car = new Cars();
    private int carID;
    
    
    public ReadRecord (int carID){
    
          Properties props = new Properties();
    InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    String driver = props.getProperty("driver.name");
    String url = props.getProperty("server.name");
    String username = props.getProperty("user.name");
    String passwd = props.getProperty("user.password");
    
    
    this.carID = carID;
    
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        } 
}
    
    public void doRead() {
    
        try {
            //set up a string to hold our query
            String query = "SELECT * FROM car WHERE carID = ?";
            
            //create a preparedstatement using our query sstring
            PreparedStatement ps = conn.prepareStatement(query);
            
            //fill in prepared statement
            ps.setInt(1, carID);
            
            //execute the query
            this.results = ps.executeQuery();
            
            this.results.next();
            
            car.setCarID(this.results.getInt("carID"));
            car.setCarYear(this.results.getInt("carYear"));
            car.setCarMake(this.results.getString("carMake"));
            car.setCarModel(this.results.getString("carModel"));
            car.setCarHP(this.results.getInt("carHP"));
        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
}
    
    public Cars getCar(){
        
        return this.car;
    }
    
}
