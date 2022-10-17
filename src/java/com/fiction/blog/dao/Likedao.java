/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fiction.blog.dao;

/**
 *
 * @author thomb
 */

import com.fiction.blog.helper.ConnectionProvider;
import java.sql.*;

public class Likedao {
    Connection con;

    public Likedao(Connection con) {
        this.con = con;
    }
    
    public boolean insertLike(int sid,int uid)
    {
        boolean f = false;
       try
       {
          String q ="insert into likes(story_id,use_id) values(?,?)";
          PreparedStatement p = this.con.prepareStatement(q);
          p.setInt(1, sid);
          p.setInt(2, uid);
          p.executeUpdate();
          f=true;
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
        return f;
    }
    
    public int countLikes(int sid)
    {
        int count=0;
        String qu = "select count(*) from likes where story_id=?";
        try
        {
            PreparedStatement p = this.con.prepareStatement(qu);
            p.setInt(1, sid);
            ResultSet set = p.executeQuery();
            if(set.next())
            {
                count=set.getInt(1);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return count;
    }
    
    public boolean isLikedByu(int sid, int uid)
    {
        boolean f=false;
        try
        {
            PreparedStatement p = this.con.prepareStatement("select * from likes where story_id= ? and use_id=?");
            p.setInt(1, sid);
            p.setInt(2, uid);
            ResultSet s = p.executeQuery();
            if(s.next())
            {
                f=true;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
     
    public boolean deleteLike(int sid,int uid)
    {
        boolean f=false;
        try
        {
            PreparedStatement p= this.con.prepareStatement("delete from likes where story_id=? and use_id=?");
            p.setInt(1, sid);
            p.setInt(2, uid);
            p.executeUpdate();
            f= true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
}
