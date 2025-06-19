package com.javaweb.api.admin;

import com.javaweb.model.dto.AssignmentHotelDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.AssignmentHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/assignment")
public class AssignmentHotelAPI {
    @Autowired
    private AssignmentHotelService assignmentHotelService;

    @PostMapping
    public ResponseEntity<?> updateAssignment(@RequestBody AssignmentHotelDTO assignmentHotelDTO) {
        ResponseDTO responseDTO = new ResponseDTO();
        if(assignmentHotelDTO.getHotelId() == null){
            responseDTO.setMessage("validate failed");
            return ResponseEntity.badRequest().body(responseDTO);
        }
        String result = assignmentHotelService.updateAssignmentHotel(assignmentHotelDTO);
        responseDTO.setMessage(result);
        return ResponseEntity.ok().body(responseDTO);
    }
}
