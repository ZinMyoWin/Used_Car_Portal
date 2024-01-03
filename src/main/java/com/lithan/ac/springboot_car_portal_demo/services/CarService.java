package com.lithan.ac.springboot_car_portal_demo.services;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.ac.springboot_car_portal_demo.controller.CarController;
import com.lithan.ac.springboot_car_portal_demo.daos.CarRepository;
import com.lithan.ac.springboot_car_portal_demo.entities.Car;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class CarService {
  
	private static final Logger logger = LoggerFactory.getLogger(CarController.class);

    @Autowired
    private CarRepository carRepository;

    //Constructor
	public CarService(CarRepository car_repo) {
		// TODO Auto-generated constructor stub
		this.carRepository=car_repo;
	}



	public List<Car> getAllCars() {
		System.out.println("In get call car service");
        return carRepository.findAll();
    }
    
    //used for both update and Save Car
    public Car saveCar(Car car) {
       return carRepository.save(car);
    }
    
    public Car get(Long id) {
        Optional<Car> optionalCar = carRepository.findById(id);
        if (optionalCar.isPresent()) {
            return optionalCar.get();
        } else {
            throw new EntityNotFoundException("Car with ID " + id + " not found");
        }
    }


	
	public void delete(Long id) {
		carRepository.deleteById(id);
	}
	
	public List<Car> search(String keyword) {
		return carRepository.search(keyword);
		
		}



	



	

}
