
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rajat
 */
public class MEMO {
     
            String databaseURL = "jdbc:mysql://localhost:3306/general";
            String user = "root";
            String password = "ayush";
            Connection conn =null;
            PreparedStatement inst=null;
            ResultSet res=null;

            MEMO()
            {
                try{
                    conn=DriverManager.getConnection(databaseURL,user,password);
                    
                    }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
            }
            
            public int setMemo(String sub,String cont)
            {
                int result=0;
                try{
                    inst=conn.prepareStatement("INSERT INTO memo(sub,content) VALUES(?,?)");
                    inst.setString(1,sub);
                    inst.setString(2,cont);
                    result=inst.executeUpdate();
                }
                catch(Exception e){
                        e.printStackTrace();
                    }
                return result;
            }
            
            public int setMemo(MemoOb m)
            {
                int result=0;
                try{
                    inst=conn.prepareStatement("INSERT INTO memo(sub,content) VALUES(?,?)");
                    inst.setString(1,m.sub);
                    inst.setString(2,m.content);
                    result=inst.executeUpdate();
                }
                catch(Exception e){
                        e.printStackTrace();
                    }
                return result;
            }
            

             public int delMemo(String sub)
            {
                int result=0;
                try{
                    inst=conn.prepareStatement("DELETE from memo where sub like ?");
                    inst.setString(1,sub);
                    result=inst.executeUpdate();
                }
                catch(Exception e){
                        e.printStackTrace();
                    }
                return result;
            }

    
}
