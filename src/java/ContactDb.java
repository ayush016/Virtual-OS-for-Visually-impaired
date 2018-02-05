
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rajat
 */
import java.sql.*;
public class ContactDb {
    
                        String databaseURL = "jdbc:mysql://localhost:3306/general";
                        String user = "root";
                        String password = "ayush";

                        Connection conn = null;
                        PreparedStatement addContacts = null;
                        PreparedStatement selectContacts = null;
                        PreparedStatement deleteContacts = null;
                        ResultSet result = null;

                        public ContactDb()
                        {
                            try{
                                conn=DriverManager.getConnection(databaseURL,user,password);
                                
                            }
                            catch(SQLException e){
                                e.printStackTrace();
                            }
                        }

                        public int setContacts(String fname, String lname, Long numb, String emailid)
                        {
                            int result=0;

                            try{
                                addContacts = conn.prepareStatement("INSERT INTO contact (f_name,l_name,num,email) values (?,?,?,?)");
                                addContacts.setString(1,fname);
                                addContacts.setString(2,lname);
                                addContacts.setLong(3,numb);
                                addContacts.setString(4,emailid);
                                result = addContacts.executeUpdate();
                            } catch(SQLException e){
                                e.printStackTrace();
                            }

                            return result;
                        }
                        
                          public int setContacts(Contact c)
                        {
                            int result=0;

                            try{
                                addContacts = conn.prepareStatement("INSERT INTO contact (f_name,l_name,num,email) values (?,?,?,?)");
                                addContacts.setString(1,c.fname);
                                addContacts.setString(2,c.lname);
                                addContacts.setLong(3,c.numb);
                                addContacts.setString(4,c.emailid);
                                result = addContacts.executeUpdate();
                            } catch(SQLException e){
                                e.printStackTrace();
                            }

                            return result;
                        }
                        
                        public ResultSet getContacts()
                        {
                            try{
                                 selectContacts = conn.prepareStatement("SELECT * FROM contact order by f_name, l_name");
                                result=selectContacts.executeQuery();
                            }
                            catch(SQLException e){
                                e.printStackTrace();
                            }
                            return result;
                        }

                        public int deleteContacts(int id)
                        {
                            int result=0;

                            try{
                               
                                deleteContacts = conn.prepareStatement("DELETE FROM contact WHERE c_id=?");
                                deleteContacts.setInt(1,id);
                                result = deleteContacts.executeUpdate();
                            } catch(SQLException e){
                                e.printStackTrace();
                            }
                            
                            return result;
                        }
                        
                        
}
