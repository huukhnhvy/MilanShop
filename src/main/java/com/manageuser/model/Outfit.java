package com.manageuser.model;

import javax.persistence.*;

@Entity
@Table(name = "Outfit")
public class Outfit {
    @Id
    @Column(name="id")
    private int id;
    @Column(name = "code", unique = true)
    private String code;
    private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
