package com.khauminhduy.model;

public class Comments extends AbstractModel<Comments> {

    private String content;
    private long newid;
    private long userid;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public long getNewid() {
        return newid;
    }

    public void setNewid(long newid) {
        this.newid = newid;
    }

    public long getUserid() {
        return userid;
    }

    public void setUserid(long userid) {
        this.userid = userid;
    }
}
