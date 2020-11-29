package com.khauminhduy.model;

import java.sql.Timestamp;

public class Comments extends AbstractModel<Comments> {

    private String content;
    private long newid;
    private long userid;

    public Comments() {
    }

    public Comments(Timestamp createdDate, Timestamp modifiedDate, Timestamp createdBy, Timestamp modifiedBy, String content, long newid, long userid) {
        super(createdDate, modifiedDate, createdBy, modifiedBy);
        this.content = content;
        this.newid = newid;
        this.userid = userid;
    }

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

    @Override
    public String toString() {
        return "Comments{" +
                "content='" + content + '\'' +
                ", newid=" + newid +
                ", userid=" + userid +
                "} " + super.toString();
    }
}
