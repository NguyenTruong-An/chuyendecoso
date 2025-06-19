package com.javaweb.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "hotel")
@Getter
@Setter
public class HotelEntity extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "street")
    private String street;

    @Column(name = "ward")
    private String ward;

    @Column(name = "district")
    private String district;

    @Column(name = "floorarea")
    private Long floorArea;

    @Column(name = "rentprice", nullable = false)
    private Long rentPrice;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "hotelEntity", fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<AssignmentHotelEntity> assignmentHotelEntities;
}
