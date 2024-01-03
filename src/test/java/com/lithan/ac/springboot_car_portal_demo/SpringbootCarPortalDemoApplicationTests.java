package com.lithan.ac.springboot_car_portal_demo;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;

import com.lithan.ac.springboot_car_portal_demo.daos.CarRepository;
import com.lithan.ac.springboot_car_portal_demo.entities.Car;
import com.lithan.ac.springboot_car_portal_demo.services.CarService;

@SpringBootTest
class SpringbootCarPortalDemoApplicationTests {

	@Test
	void contextLoads() {
	}
	
	@Mock
	private CarRepository car_repo;
	
	private CarService car_service;
	
	@BeforeEach
	void setup() {
		this.car_service=new CarService(this.car_repo);
		
	}
	
	//Unit Testing for car Service
	@Test
	void TestGetAllCar() {
		car_service.getAllCars();
		verify(car_repo).findAll();
	}
	
	
	@Test
	void testGetAllCar_count() {
	    // Assuming you have a list of cars
	    List<Car> listCars = new ArrayList<>();
	    listCars.add(new Car());
	    listCars.add(new Car());
	    
	    when(car_repo.findAll()).thenReturn(listCars);
	    
	    List<Car> retrievedCars = car_service.getAllCars();
	    int carCount = retrievedCars.size();
	    System.out.println("Car count is " + carCount);
	    
	    assertEquals(listCars.size(), carCount);
	}
	
	@Test
	void testGetCarById() {
	    // Assuming you have a specific car ID
	    Long carId = 1L;
	    
	    // Assuming you have a predefined Car object
	    Car mockCar = new Car();
	    mockCar.setId(carId);
	    when(car_repo.findById(carId)).thenReturn(Optional.of(mockCar));
	    
	    Car foundCar = car_service.get(carId);
	    assertNotNull(foundCar);
	    assertEquals(carId, foundCar.getId());
	}

	@Test
	void testGetCarById_NotFound() {
	    Long nonExistentCarId = 999L;
	    when(car_repo.findById(nonExistentCarId)).thenReturn(Optional.empty());
	    
	    assertThrows(EntityNotFoundException.class, () -> car_service.get(nonExistentCarId));
	}

	@Test
	void testAddCar() {
	    Car newCar = new Car();
	    newCar.setMake("New Car");
	    newCar.setPrice(20000);
	    
	    car_service.saveCar(newCar);
	    
	    verify(car_repo).save(newCar);
	}

	@Test
	void testUpdateCar() {
	    Long carId = 1L;
	    Car existingCar = new Car();
	    existingCar.setId(carId);
	    existingCar.setPrice(1000);
	    existingCar.setPrice(15000);
	    
	    when(car_repo.existsById(carId)).thenReturn(true);
	    when(car_repo.save(existingCar)).thenReturn(existingCar);
	    
	    Car updatedCar = car_service.saveCar(existingCar);
	    
	    assertEquals(existingCar.getMake(), updatedCar.getModel());
	    assertEquals(existingCar.getPrice(), updatedCar.getPrice());
	}

	@Test
	void testDeleteCar() {
	    Long carId = 1L;
	    
	    when(car_repo.existsById(carId)).thenReturn(true);
	    
	    car_service.delete(carId);
	    
	    verify(car_repo).deleteById(carId);
	}
	
	
	
	


}
