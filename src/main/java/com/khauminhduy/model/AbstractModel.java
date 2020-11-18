package com.khauminhduy.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class AbstractModel<T> {

    private long id;
    private Timestamp createdDate;
    private Timestamp modifiedDate;
    private Timestamp createdBy;
    private Timestamp modifiedBy;
    private List<T> listResult = new ArrayList<>();

    private int startPage;
    private int visiblePages;
    private int totalPages;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    public Timestamp getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Timestamp modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public Timestamp getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Timestamp createdBy) {
        this.createdBy = createdBy;
    }

    public Timestamp getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(Timestamp modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public List<T> getListResult() {
        return listResult;
    }

    public void setListResult(List<T> listResult) {
        this.listResult = listResult;
    }

    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getVisiblePages() {
        return visiblePages;
    }

    public void setVisiblePages(int visiblePages) {
        this.visiblePages = visiblePages;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

}
