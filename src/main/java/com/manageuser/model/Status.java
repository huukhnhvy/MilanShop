package com.manageuser.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Status")
public class Status{
    @Id
    @Column(name="id")
    private int id;
    private String status;

    public Status() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
