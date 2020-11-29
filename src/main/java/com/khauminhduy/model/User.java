package com.khauminhduy.model;


import java.sql.Timestamp;

public class User extends AbstractModel<User> {

    private String username;
    private String password;
    private String fullname;
    private long status;
    private long roleid;

    public User() {
    }

    public User(Timestamp createdDate, Timestamp modifiedDate, Timestamp createdBy, Timestamp modifiedBy, String username, String password, String fullname, long status, long roleid) {

        super(createdDate, modifiedDate, createdBy, modifiedBy);
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.status = status;
        this.roleid = roleid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public long getStatus() {
        return status;
    }

    public void setStatus(long status) {
        this.status = status;
    }

    public long getRoleid() {
        return roleid;
    }

    public void setRoleid(long roleid) {
        this.roleid = roleid;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", fullname='" + fullname + '\'' +
                ", status=" + status +
                ", roleid=" + roleid +
                "} " + super.toString();
    }
}
