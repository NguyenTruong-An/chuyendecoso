package com.javaweb.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "assignmenthotel")
public class AssignmentHotelEntity extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "hotelid")
    @JsonBackReference
    private HotelEntity hotelEntity;

    @ManyToOne
    @JoinColumn(name = "staffid")
    private UserEntity userEntity;
}
