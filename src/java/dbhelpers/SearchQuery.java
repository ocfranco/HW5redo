
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

public class SearchQuery {
    
    private Connection conn;
    private ResultSet results;
    
    public SearchQuery(){
        
             
    Properties props = new Properties();
    InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    String driver = props.getProperty("driver.name");
    String url = props.getProperty("server.name");
    String username = props.getProperty("user.name");
    String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    
    public void doSearch (String carModel){
        
        try {
            String query = "SELECT * FROM car WHERE UPPER (carModel) LIKE ?";
            
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + carModel.toUpperCase() + "%");
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public String getHTMLTable(){
        
        String table = "";
        table += "<table border=1>";
        
        try {
            while(this.results.next()){
                
                Cars car = new Cars();
                car.setCarID(this.results.getInt("carID"));
                car.setCarYear(this.results.getInt("carYear"));
                car.setCarMake(this.results.getString("carMake"));
                car.setCarModel(this.results.getString("carModel"));
                car.setCarHP(this.results.getInt("carHP"));
                
                table +="<tr>";
                table +="<td>";
                table += car.getCarID();
                table +="</td>";
                
                table +="<td>";
                table += car.getCarYear();
                table +="</td>";
                
                table +="<td>";
                table += car.getCarMake();
                table +="</td>";
                
                table +="<td>";
                table += car.getCarModel();
                table +="</td>";
                
                table +="<td>";
                table += car.getCarHP();
                table +="</td>";
                
                table += "<td>";
                table += "<a href=update?carID=" + car.getCarID() + "> Update </a>" + "<a href=delete?carID=" + car.getCarID()+ "> Delete </a>";
                table +="</td>";
                table +="</tr>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
      
        
        table +="</table>";
        
            return table;
                    
            
    }
    
}
