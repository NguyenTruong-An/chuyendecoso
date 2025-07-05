package com.javaweb.service.impl;

import com.javaweb.converter.CustomerConverter;
import com.javaweb.entity.CustomerEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.enums.Status;
import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.model.request.CustomerSearchRequest;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.repository.CustomerRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.repository.custom.CustomerRepositoryCustom;
import com.javaweb.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepositoryCustom custom;
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private CustomerConverter customerConverter;
    @Autowired
    private UserRepository userRepository;

    @Override
    public ResponseDTO createOrUpdateCustomer(CustomerDTO customerDTO) {
        try {
            ResponseDTO responseDTO = new ResponseDTO();
            if(customerDTO.getId() == null) {
                customerDTO.setStatus(Status.CHUA_XU_LY.toString());
            }
            CustomerEntity customerEntity = customerConverter.toCustomerEntity(customerDTO);
            if(customerDTO.getId() != null) {
                CustomerEntity customer=customerRepository.findCustomerEntitiesById(customerDTO.getId());
                if(customer != null) {
                    customerEntity.setUsers(customer.getUsers());
                }
            }
            customerRepository.save(customerEntity);
            responseDTO.setMessage("Success");
            return responseDTO;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<CustomerEntity> findCustomer(CustomerSearchRequest request, Pageable pageable) {
        return custom.findCustomer(request, pageable);
    }

    @Override
    public int countCustomer(CustomerSearchRequest request) {
        return custom.countCustomer(request);
    }

    @Override
    public boolean isStaffOfCustomer(Long staffId, Long customerId) {
        CustomerEntity customerEntity = customerRepository.findCustomerEntitiesById(customerId);
        UserEntity userEntity = userRepository.findById(staffId).get();
        if(customerEntity.getUsers().contains(userEntity)) {
            return true;
        }
        return false;
    }

    @Override
    public CustomerDTO findByIdandIsActive(Long id, Integer isActive) throws Exception {
        try {
            CustomerEntity customerEntity = customerRepository.findCustomerEntitiesByIdAndIsActive(id,1);
            CustomerDTO customerDTO = customerConverter.toCustomerDTO(customerEntity);
            return customerDTO;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
