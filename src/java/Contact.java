/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rajat
 */
public class Contact {
    String fname,lname; 
    Long numb;
    String emailid;
    
    Contact(String fname, String lname, Long numb, String emailid)
    {
        this.fname=fname;
        this.lname=lname;
        this.emailid=emailid;
        this.numb=numb;
    }
    
}
