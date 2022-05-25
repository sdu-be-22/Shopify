package kz.microhard.microdelivery.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;


@Entity
@Table(name = "address")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class AddressEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "userid")
    private String userid;

    @Column(name = "title")
    private String title;

    @Column(name = "addresss")
    private String addresss;

    @Column(name = "province")
    private String province;

    @Column(name = "district")
    private String district;

    @Column(name = "city")
    private String city;

    @Column(name = "zip")
    private String zip;

    @Column(name = "phone")
    private String phone;
}
