/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fiction.blog.dao;

import com.fiction.blog.entities.Category;
import com.fiction.blog.entities.StoryPost;
import com.fiction.blog.entities.StoryType;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thomb
 */
public class Storydao {
    
     Connection con;

    public Storydao(Connection con) {
        this.con = con;
    }

    
    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> list = new ArrayList<>();

        try {

            String q = "select * from categories";
            Statement st = this.con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next()) {
                int cid = set.getInt("cid");
                String cname = set.getString("cname");
                Category c = new Category(cid, cname);
                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    public ArrayList<StoryType> getAllType(){
        
        ArrayList<StoryType> ls= new ArrayList<>();
        
        try
        {
            String q = "select * from storytype";
            Statement st = this.con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next())
            {
                int tid = set.getInt("tid");
                String tname = set.getString("tname");
                StoryType sty = new StoryType(tid, tname);
                ls.add(sty);
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return ls;
    }

    public boolean savePost(StoryPost p) {
        boolean f = false;
        try {

            String q = "insert into stories(title,content,cid,user_id,type_id,summary,pic) values(?,?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, p.getTitle());
            pstmt.setString(2, p.getContent());
            pstmt.setInt(3, p.getCid());
            pstmt.setInt(4, p.getUser_id());
            pstmt.setInt(5, p.getType_id());
            pstmt.setString(6, p.getSummary());
            pstmt.setString(7, p.getPic());        
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

//    get all the posts
    public List<StoryPost> getAllPosts() {

        List<StoryPost> list = new ArrayList<>();
        //fetch all the post
        try {

            PreparedStatement p = con.prepareStatement("select * from stories order by sid desc");

            ResultSet set = p.executeQuery();

            while (set.next()) {
                int sid = set.getInt("sid");
                String title = set.getString("title");
                String content = set.getString("content");
                Timestamp pub_date = set.getTimestamp("publish_date");
                int cid = set.getInt("cid");
                int uid = set.getInt("user_id");
                int tid = set.getInt("type_id");
                String summ = set.getString("summary");
                String pic = set.getString("pic");
                StoryPost post = new StoryPost(sid, title, content, pub_date, cid, uid, tid, summ, pic);
                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<StoryPost> getPostByCatId(int catId,int tyid) {
        List<StoryPost> list = new ArrayList<>();
        //fetch all post by id
        //fetch all the post
        try {

            PreparedStatement p = con.prepareStatement("select * from stories where cid=? and type_id=?");
            p.setInt(1, catId);
            p.setInt(2, tyid);
            ResultSet set = p.executeQuery();

            while (set.next()) {

                int sid = set.getInt("sid");
                String title = set.getString("title");
                String content = set.getString("content");
                Timestamp pub_date = set.getTimestamp("publish_date");
                int cid = set.getInt("cid");
                int uid = set.getInt("user_id");
                int tid = set.getInt("type_id");
                String summ = set.getString("summary");
                String pic = set.getString("pic");
                StoryPost post = new StoryPost(sid, title, content, pub_date, cid, uid, tid, summ, pic);
                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

   public StoryPost getStoryById(int stid)
   {
       StoryPost sp=null;
       String qu="select * from stories where sid=?";
       try{
            PreparedStatement pst = this.con.prepareStatement(qu);
            pst.setInt(1, stid);
            ResultSet set=pst.executeQuery();
            if(set.next())
            {
                int sid = set.getInt("sid");
                String title = set.getString("title");
                String content = set.getString("content");
                Timestamp pub_date = set.getTimestamp("publish_date");
                int cid = set.getInt("cid");
                int uid = set.getInt("user_id");
                int tid = set.getInt("type_id");
                String summ = set.getString("summary");
                String pic = set.getString("pic");
                sp = new StoryPost(sid, title, content, pub_date, cid, uid, tid, summ, pic);
            }
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       return sp;
   }
    
}
