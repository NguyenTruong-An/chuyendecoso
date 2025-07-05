package com.javaweb.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "customer")
public class CustomerEntity extends BaseEntity {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        @Column(name = "fullname")
        private String fullName;

        @Column(name = "phone")
        private String phone;

        @Column(name = "email")
        private String email;

        @Column(name = "status")
        private String status;

        @Column(name = "is_active")
        private Integer isActive=1;

        @ManyToMany
        @JoinTable(name = "assignmentcustomer",
                joinColumns = @JoinColumn(name = "customerid",nullable = false),
                inverseJoinColumns = @JoinColumn(name = "staffid",nullable = false))
        private List<UserEntity> users = new ArrayList<>();

        @OneToMany(mappedBy = "customer",fetch = FetchType.LAZY)
        private List<TransactionEntity> transactions = new ArrayList<>();
}
