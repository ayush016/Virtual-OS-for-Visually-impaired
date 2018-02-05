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
public class EmailDb {
    String subject;
    String rcpnt;
    String content;
    String databaseURL = "jdbc:mysql://localhost:3306/general";
            String user = "root";
            String password = "ayush";
            Connection conn =null;
            PreparedStatement inst=null;
            ResultSet res=null;
            EmailDb()
            {
                try{
                   Class.forName("com.mysql.jdbc.Driver");
                    conn=DriverManager.getConnection(databaseURL,user,password);
                    inst=conn.prepareStatement("INSERT INTO mail(email,sub,content) VALUES(?,?,?)");
                     //inst.executeUpdate();
                    }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
            }
    void getcontent(String subject,String rcpnt,String content)
    {
        this.subject = subject;
        this.rcpnt = rcpnt;
        this.content = content;
    }
    
    void getContent(Mail p)
    {
        this.subject=p.subject;
        this.content=p.content;
        this.rcpnt=p.rcpnt;
    }
    void setcontent()
    {
        int result=0;
                try{
                    inst.setString(1,rcpnt);
                    inst.setString(2,subject);
                    inst.setString(3,content);
                    //
                    inst.executeUpdate();
                    //inst=conn.prepareStatement("insert into mail(email,sub,content) values ('"+rcpnt+"'"+subject+"','"+content+"')");
                    //inst.executeUpdate();
                    
                }
                catch(Exception e){
                        e.printStackTrace();
                    }
               
                
    }
    
    
}
