package com.manageuser.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Roles")
public class Role {
    @Id
    @Column(name="id")
    private int id;
    @Column(name = "code", unique = true)
    private String code;
    private String name;
    @OneToMany(mappedBy = "role")
    private List<User> users;

    public Role() {
        super();
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

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
