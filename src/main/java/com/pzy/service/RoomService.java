
package com.pzy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pzy.entity.Room;
import com.pzy.repository.RoomRepository;

@Service
public class RoomService {
     @Autowired
     private RoomRepository roomRepository;
     public List<Room> findAll() {
          return (List<Room>) roomRepository.findAll();
     }
	public Room get(Long id) {
		return roomRepository.findOne(id);
	}
}