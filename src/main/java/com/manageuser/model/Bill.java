package com.manageuser.model;

import com.manageuser.dao.StatusDao;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Entity
@Table(name = "Bill")
@NamedQuery(name = "Bill.findAll", query = "SELECT u FROM Bill u")
public class Bill extends Abstract{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    private String fullname;
    private String address;
    private String street;
    private String city;
    private String email;
    private String phone;
    private Timestamp date;
    @ManyToOne
    @JoinColumn(name = "status")
    private Status status;
    private float total;

    public Bill() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Status getStatus() {
        return status;
    }
    public void setStatusId(int statusId){
        status.setId(statusId);
    }
    public int getStatusId(){
        return status.getId();
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public List<Status> getListStatus() {
        StatusDao dao = new StatusDao();
        return dao.findAll();
    }
}
