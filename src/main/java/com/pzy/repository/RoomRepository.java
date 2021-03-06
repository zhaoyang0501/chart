package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import com.pzy.entity.Room;
public interface RoomRepository extends PagingAndSortingRepository<Room, Long>,JpaSpecificationExecutor<Room>{
}

