package com.fatma.royal.web.model;

import jakarta.persistence.*;
import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "building_images")
public class BuildingImages {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "building_id", nullable = false)
    private Building building;

    @Column(name = "image_1", nullable = false, length = 255)
    private String image1;

    @Column(name = "image_2", length = 255)
    private String image2;

    @Column(name = "image_3", length = 255)
    private String image3;


    public BuildingImages() {}

    public BuildingImages(Building building, String image1, String image2, String image3) {
        this.building = building;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Building getBuilding() {
        return building;
    }

    public void setBuilding(Building building) {
        this.building = building;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    @Override
    public String toString() {
        return "BuildingImages{" +
                "id=" + id +
                ", image1='" + image1 + '\'' +
                ", image2='" + image2 + '\'' +
                ", image3='" + image3 + '\'' +
                ", buildingId=" + (building != null ? building.getId() : "null") +
                '}';
    }
}
