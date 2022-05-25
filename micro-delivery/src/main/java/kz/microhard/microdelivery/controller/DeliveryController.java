package kz.microhard.microdelivery.controller;

import kz.microhard.microdelivery.service.DeliveryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@Validated
@RestController
@RequestMapping("/delivery")
public class DeliveryController {

	@Autowired
	private DeliveryService deliveryService;

	@Autowired
	private RestTemplate restTemplate;

}
