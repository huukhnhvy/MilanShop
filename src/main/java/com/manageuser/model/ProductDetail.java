package com.manageuser.model;

import javax.persistence.*;

@Entity
@Table(name = "ProductDetail")
@NamedQuery(name = "ProductDetail.findAll", query = "SELECT u FROM ProductDetail u")
public class ProductDetail extends Abstract {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private int id;
    @Column(name = "PicDetail")
    private String subPic;
    @ManyToOne
    @JoinColumn(name = "productId")
    private Product product;

    public ProductDetail() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSubPic() {
        return subPic;
    }

    public void setSubPic(String subPic) {
        this.subPic = subPic;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
