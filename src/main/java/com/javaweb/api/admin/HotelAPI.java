package com.javaweb.api.admin;

import com.javaweb.entity.HotelEntity;
import com.javaweb.model.dto.HotelDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.HotelRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.HotelService;
import com.javaweb.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/hotels")
public class HotelAPI {
    private final UserRepository userRepository;

    @Autowired
    private HotelRepository hotelRepository;
    @Autowired
    private UserService userService;

    public HotelAPI(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Autowired
    private HotelService hotelService;

    @PostMapping
    public ResponseEntity<?> createHotel(@Valid @RequestBody HotelDTO hotelDTO, BindingResult bindingResult) {
        ResponseDTO responseDTO = new ResponseDTO();
        try{
            if(bindingResult.hasErrors()){
                List<String> errors = bindingResult.getFieldErrors().stream().map(FieldError::getDefaultMessage).collect(Collectors.toList());
                responseDTO.setMessage("Validation Failed");
                responseDTO.setData(errors);
                return ResponseEntity.badRequest().body(responseDTO);
            }
        }catch(Exception ex){
                responseDTO.setMessage("Internal Server Error");
                responseDTO.setDetail(ex.getMessage());
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(responseDTO);
        }
        HotelEntity hotelEntity = hotelService.createHotel(hotelDTO);
        responseDTO.setMessage("Success");
        return ResponseEntity.status(HttpStatus.OK).body(responseDTO);
    }

    @PutMapping
    public ResponseEntity<?> updateHotel(@Valid @RequestBody HotelDTO hotelDTO, BindingResult bindingResult){
        ResponseDTO responseDTO = new ResponseDTO();
        try{
            if(bindingResult.hasErrors()){
                List<String> errors = bindingResult.getFieldErrors().stream().map(FieldError::getDefaultMessage).collect(Collectors.toList());
                responseDTO.setMessage("Validation Failed");
                responseDTO.setData(errors);
                return ResponseEntity.badRequest().body(responseDTO);
            }
        }catch(Exception ex){
            responseDTO.setMessage("Internal Server Error");
            responseDTO.setDetail(ex.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(responseDTO);
        }
        if(hotelDTO.getId() != null){
            HotelEntity hotelEntity = hotelService.updateHotel(hotelDTO);
            responseDTO.setMessage("Success");
            return ResponseEntity.status(HttpStatus.OK).body(responseDTO);
        }else{
            responseDTO.setMessage("Failed to update hotel");
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(responseDTO);
        }
    }

    @GetMapping("/{id}/staffs")
    public ResponseEntity<?> loadStaffs(@PathVariable Long id){
        ResponseDTO responseDTO = new ResponseDTO();
        List<StaffResponseDTO> staffResponseDTOList = userService.loadStaffs(id);
        responseDTO.setData(staffResponseDTOList);
        responseDTO.setMessage("Success");
        return ResponseEntity.status(HttpStatus.OK).body(responseDTO);
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> loadHotels(@PathVariable Long id){
        ResponseDTO responseDTO = new ResponseDTO();
        HotelDTO hotelDTO = hotelService.findById(id);
        responseDTO.setData(hotelDTO);
        responseDTO.setMessage("Success");
        return ResponseEntity.status(HttpStatus.OK).body(responseDTO);
    }

    @DeleteMapping("/{ids}")
    public ResponseEntity<?> deleteStaffs(@PathVariable List<Long> ids){
        ResponseDTO responseDTO = new ResponseDTO();
        String result = hotelService.delete(ids);
        responseDTO.setMessage(result);
        return ResponseEntity.status(HttpStatus.OK).body(responseDTO);
    }

}
