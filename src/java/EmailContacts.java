/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Vipincco
 */
import java.sql.*;
public class EmailContacts extends ContactDb{
    String s ;
    EmailContacts(String s )
    {
        this.s = s;
    }
    public boolean isNumeric()  
        {
                    try  
            {         
                        double d = Double.parseDouble(s);  
            }  
                    catch(NumberFormatException nfe)  
                {  
                        return false;  
                }  
        return true;  
}
            public String retstring()
        {
            ContactDb ab = new ContactDb();
            ResultSet res = ab.getContacts();
            try{
           
            while(res.next())
            {
                if(res.getString("f_name").equals(s))
                {
                    return res.getString("email");
                }
            }
            
            
        }
        
            catch(Exception e)
            {
                
            }
            return "false";
        }
    
}
