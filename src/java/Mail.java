/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rajat
 */
public class Mail {
    String subject;
    String rcpnt;
    String content;
   
    Mail(String subject,String rcpnt,String content)
    {
        this.subject=subject;
        this.content=content;
        this.rcpnt=rcpnt;
    }
}
