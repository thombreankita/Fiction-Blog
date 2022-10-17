/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fiction.blog.entities;

/**
 *
 * @author thomb
 */
public class StoryType {
 
    private int tid;
    private String tname;

    public StoryType() {
    }

    public StoryType(int tid, String tname) {
        this.tid = tid;
        this.tname = tname;
    }

    public StoryType(String tname) {
        this.tname = tname;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }
    
    
}
