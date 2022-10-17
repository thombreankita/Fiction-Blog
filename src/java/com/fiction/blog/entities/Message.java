/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fiction.blog.entities;

/**
 *
 * @author thomb
 */
public class Message {
    
    private String cont;
    private String typ;
    private String cssClass;

    public Message(String cont, String typ, String cssClass) {
        this.cont = cont;
        this.typ = typ;
        this.cssClass = cssClass;
    }

    public String getCont() {
        return cont;
    }

    public void setCont(String cont) {
        this.cont = cont;
    }

    public String getTyp() {
        return typ;
    }

    public void setTyp(String typ) {
        this.typ = typ;
    }

    public String getCssClass() {
        return cssClass;
    }

    public void setCssClass(String cssClass) {
        this.cssClass = cssClass;
    }
    
    
}
