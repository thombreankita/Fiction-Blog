/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fiction.blog.entities;

import java.sql.Timestamp;

/**
 *
 * @author thomb
 */
public class StoryPost {
    
    private int sid;
    private String title;
    private String content;
    private Timestamp publish_date;
    private int cid;
    private int user_id;
    private int type_id;
    private String summary;
    private String pic;

    public StoryPost() {
    }

    public StoryPost(int sid, String title, String content, Timestamp publish_date, int cid, int user_id, int type_id, String summary, String pic) {
        this.sid = sid;
        this.title = title;
        this.content = content;
        this.publish_date = publish_date;
        this.cid = cid;
        this.user_id = user_id;
        this.type_id = type_id;
        this.summary = summary;
        this.pic = pic;
    }

    public StoryPost(String title, String content, Timestamp publish_date, int cid, int user_id, int type_id, String summary, String pic) {
        this.title = title;
        this.content = content;
        this.publish_date = publish_date;
        this.cid = cid;
        this.user_id = user_id;
        this.type_id = type_id;
        this.summary = summary;
        this.pic = pic;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getPublish_date() {
        return publish_date;
    }

    public void setPublish_date(Timestamp publish_date) {
        this.publish_date = publish_date;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }
    
    
    
    
}
