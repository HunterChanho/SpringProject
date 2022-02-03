package com.oracle.HomeTheater.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Payment {
	private int number;
	private String pay_how;
	private String pay_point;
	private String pay_usePoint;
	private String totalPrice;
}
