/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package post.model;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author McKay
 */
public class Post {

    private String text;
    private String username;
    private Date date;
    
    public Post() {
        this("Anonymous", "This is not a post!");
    }
    public Post(String username, String text) {
        this.text = text;
        this.username = username;
        this.date = new Date();
    }
    
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
    @Override
    public String toString() {
        String dateString = new SimpleDateFormat(" 'at' HH:mm:ss 'on' MMM dd").format(date);
        return username + ": " + text + dateString;
    }
    public String toFileString() {
        return username + "," + text + "," + date.toString();
    }
    public void loadFromFileString(String str) throws ParseException {
        String[] parts = str.split(",");
        
        username = parts[0];
        text = parts[1];
        SimpleDateFormat format = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy");
        date = format.parse(parts[2]);
    }
}
