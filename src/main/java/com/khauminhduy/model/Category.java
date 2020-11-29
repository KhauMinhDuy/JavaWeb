package com.khauminhduy.model;

import java.sql.Timestamp;

public class Category extends AbstractModel<Category> {

    private String name;
    private String code;


    public Category() {
    }

    public Category(String name, String code, Timestamp createdDate, Timestamp modifiedDate, Timestamp createdBy, Timestamp modifiedBy) {
        super(createdDate, modifiedDate, createdBy, modifiedBy);
        this.name = name;
        this.code = code;
    }

    public Category(String name, String code) {
        this.name = name;
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Category{" +
                "name='" + name + '\'' +
                ", code='" + code + '\'' +
                "} " + super.toString();
    }
}
