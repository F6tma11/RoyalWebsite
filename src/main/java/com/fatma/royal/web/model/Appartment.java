package com.fatma.royal.web.model;

import jakarta.persistence.*;

@Entity
@Table(name="appartment")
public class Appartment {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private int id ;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "building_id", nullable = false)
    private Building building;

    @Column(name="area",nullable = false)
    private double area;

    @Column(name="floor",nullable = false,length = 100)
    private String floor;

    @Column(name="details",nullable = false,length = 100)
    private String details;

    @Column(name="state",nullable = false)
    private String state;

    public Appartment() {
    }

    public Appartment(int id, Building building, double area, String floor, String details, String state) {
        this.id = id;
        this.building = building;
        this.area = area;
        this.floor = floor;
        this.details = details;
        this.state = state;
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

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Appartment{" +
                "id=" + id +
                ", area=" + area +
                ", floor='" + floor + '\'' +
                ", details='" + details + '\'' +
                ", state='" + state + '\'' +
                ", buildingId=" + (building != null ? building.getId() : "null") +
                '}';
    }
}
