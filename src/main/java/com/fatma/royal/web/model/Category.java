package com.fatma.royal.web.model;

import jakarta.persistence.*;

import java.util.List;


@Entity
@Table(name="category")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id", unique=true, nullable=false)
    private int id;

    @Column(name="category_name",nullable = false,length = 100)
    private String categoryName;

    @Column(name="number_of_projects",nullable = false)
    private int numberOfProjects;


    public Category(){}
    public Category( String categoryName, int numberOfProjects) {
        this.categoryName = categoryName;
        this.numberOfProjects = numberOfProjects;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getNumberOfProjects() {
        return numberOfProjects;
    }

    public void setNumberOfProjects(int numberOfProjects) {
        this.numberOfProjects = numberOfProjects;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", categoryName='" + categoryName+ '\'' +
                ", numberOfProjects='" + numberOfProjects + '\'' +
                '}';
    }
}
