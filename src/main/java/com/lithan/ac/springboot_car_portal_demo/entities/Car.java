package com.lithan.ac.springboot_car_portal_demo.entities;

import java.lang.constant.ConstantDesc;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="car")
public class Car {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    @NotNull(message = "Make cannot be empty")
    @Size(min = 5, max = 10, message = "Make should be between 5 and 10 characters")
    @Column(name="make")
    private String make;

    @NotNull(message = "Model cannot be empty")
    @Size(min = 5, max = 10, message = "Model should be between 5 and 10 characters")
    @Column(name="model")
    private String model;

    @NotNull(message = "Registration cannot be empty")
    @Size(min = 5, max = 10, message = "Registration should be between 5 and 10 characters")
    @Column(name="registeration")
    private String registeration;

    @NotNull(message = "Price cannot be empty")
    @Column(name="price")
    @Min(value = 1000, message = "Price should not be less than 1000.")
    @Max(value = 100000, message = "Price should not be more than 100000.")
    private Integer price;

    @OneToMany(mappedBy = "car", orphanRemoval=true)
    private Set<CarBidding> biddings = new HashSet<CarBidding>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

  
    public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getRegisteration() {
		return registeration;
	}

	public void setRegisteration(String registeration) {
		this.registeration = registeration;
	}

	public ConstantDesc getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Set<CarBidding> getBiddings() {
		return biddings;
	}

	public void setBiddings(Set<CarBidding> biddings) {
		this.biddings = biddings;
	}



}
