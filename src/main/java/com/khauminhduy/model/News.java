package com.khauminhduy.model;


import java.sql.Timestamp;

public class News extends AbstractModel<News> {

    private String title;
    private String thumbnail;
    private String shortDescription;
    private String content;
    private long categoryId;

    public News() {
    }

    public News(Timestamp createdDate, Timestamp modifiedDate, Timestamp createdBy, Timestamp modifiedBy, String title, String thumbnail, String shortDescription, String content, long categoryId) {

        super(createdDate, modifiedDate, createdBy, modifiedBy);
        this.title = title;
        this.thumbnail = thumbnail;
        this.shortDescription = shortDescription;
        this.content = content;
        this.categoryId = categoryId;
    }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(long categoryId) {
        this.categoryId = categoryId;
    }

    @Override
    public String toString() {
        return "News{" +
                "title='" + title + '\'' +
                ", thumbnail='" + thumbnail + '\'' +
                ", shortDescription='" + shortDescription + '\'' +
                ", content='" + content + '\'' +
                ", categoryId=" + categoryId +
                "} " + super.toString();
    }
}
