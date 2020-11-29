package com.khauminhduy.model;

import java.sql.Timestamp;

public class Role extends AbstractModel<Role> {

    private String code;
    private String name;

    public Role() {
    }

    public Role(Timestamp createdDate, Timestamp modifiedDate, Timestamp createdBy, Timestamp modifiedBy, String code, String name) {
        super(createdDate, modifiedDate, createdBy, modifiedBy);
        this.code = code;
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Role{" +
                "code='" + code + '\'' +
                ", name='" + name + '\'' +
                "} " + super.toString();
    }
}
