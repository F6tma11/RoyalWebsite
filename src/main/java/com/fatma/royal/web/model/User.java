package com.fatma.royal.web.model;

import jakarta.persistence.*;

@Entity
@Table(name="user")
public class User {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;

    @Column(name="username" , nullable = false,length = 100)
    private String username;

    @Column(name="email",nullable = false,length = 100)
    private String email;

    @Column(name="phonenumber",nullable = false,length = 100)
    private String phonenumber;

    @Column(name="password",nullable = false,length = 100)
    private String password;


    public User(){}

    public User(  String username, String email, String phonenumber, String password) {

        this.username = username;
        this.email = email;
        this.phonenumber = phonenumber;
        this.password = password;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phonenumber + '\'' +
                '}';
    }
}
