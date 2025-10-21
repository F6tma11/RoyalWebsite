package com.fatma.royal.web.model;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name="building")
public class Building {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private int id;


    @Column(name="area",nullable = false)
    private int area;

    @Column(name="pice",nullable = false)
    private int pice;

    @Column(name="city",nullable = false,length = 100)
    private String city;

    @Column(name="discription",nullable = false,length = 100)
    private String discription;

    @OneToMany(mappedBy = "building", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<BuildingImages> images;

    @Column(name="pdfPath" ,nullable=false , length=255)
    private String pdfPath;

    @Column(name="lastMod" ,nullable=false , length=255)
    private String lastMod;

    public Building(){}

    public Building(int id,  int area, String city, int pice, String discription, List<BuildingImages> images, String lastMod, String pdfPath) {
        this.id = id;

        this.area = area;
        this.city = city;
        this.pice = pice;
        this.discription = discription;
        this.images = images;
        this.lastMod = lastMod;
        this.pdfPath = pdfPath;
    }
    public int getPice() {
        return pice;
    }

    public void setPice(int pice) {
        this.pice = pice;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public String getPdfPath() {
        return pdfPath;
    }

    public void setPdfPath(String pdfPath) {
        this.pdfPath = pdfPath;
    }

    public String getLastMod() {
        return lastMod;
    }

    public void setLastMod(String lastMod) {
        this.lastMod = lastMod;
    }

    public List<BuildingImages> getImages() {
        return images;
    }

    public void setImages(List<BuildingImages> images) {
        this.images = images;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public int getPrice() {
        return pice;
    }

    public void setPrice(int price) {
        this.pice = price;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getType() {
        return discription;
    }

    public void setType(String type) {
        this.discription = type;
    }

    @Override
    public String toString(){
        return "Building {"+
                "id "+this.id+

                ", area='" + area + '\'' +
                ", city='" + city + '\'' +
                ", price='" + pice + '\'' +
                ", type='" + discription + '\'' +
                '}';
    }
}
