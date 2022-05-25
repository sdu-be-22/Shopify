package kz.microhard.microdelivery.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "postman")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class PostMan {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "orderid")
    private String orderid;

    @Column(name = "price")
    private String price;

    @Column(name = "status")
    private String status;
}
