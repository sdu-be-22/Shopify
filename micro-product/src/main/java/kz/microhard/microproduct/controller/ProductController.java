package kz.microhard.microproduct.controller;

import kz.microhard.microproduct.common.messages.BaseResponse;
import kz.microhard.microproduct.dto.ProductDTO;
import kz.microhard.microproduct.dto.SalesDTO;
import kz.microhard.microproduct.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.validation.Valid;
import java.util.List;

@Validated
@RestController
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private RestTemplate restTemplate;

	@GetMapping(value = "/find")
	public ResponseEntity<List<ProductDTO>> getAllProducts() {
		List<ProductDTO> list = productService.findProductList();
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	@GetMapping(value = "/find/by-id")
	public ResponseEntity<ProductDTO> getProductById(@RequestParam Long id) {
		ProductDTO list = new ProductDTO();
		SalesDTO salesDTO = new SalesDTO();
		try {
			String url = "http://sales-service/sales-api/sales/find/name/by-id?id=" + id;
			ResponseEntity<SalesDTO> response = restTemplate.getForEntity(url, SalesDTO.class);
			salesDTO = response.getBody();
		} catch (Exception e) {
			System.out.println(e);
		}
		list = productService.findByProductId(id);
		list.setSales(salesDTO.getPrice());
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	@PostMapping(value = { "/add", "/update" })
	public ResponseEntity<BaseResponse> createOrUpdateProduct(@Valid @RequestBody ProductDTO productDTO) {
		BaseResponse response = productService.createOrUpdateProduct(productDTO);
		return new ResponseEntity<>(response, HttpStatus.OK);
	}

	@DeleteMapping(value = "/delete/{id}")
	public ResponseEntity<BaseResponse> deleteProductById(@PathVariable("id") Long id) {
		BaseResponse response = productService.deleteProduct(id);
		return new ResponseEntity<>(response, HttpStatus.OK);
	}

}
