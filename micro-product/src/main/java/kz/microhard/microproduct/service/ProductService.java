package kz.microhard.microproduct.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import kz.microhard.microproduct.common.exceptions.RecordNotFoundException;
import kz.microhard.microproduct.common.messages.BaseResponse;
import kz.microhard.microproduct.common.messages.CustomMessage;
import kz.microhard.microproduct.common.utils.Topic;
import kz.microhard.microproduct.dto.ProductDTO;
import kz.microhard.microproduct.entity.ProductEntity;
import kz.microhard.microproduct.repo.ProductRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ProductService {

	@Autowired
	private ProductRepository productRepository;

	public List<ProductDTO> findProductList() {
		return productRepository.findAll().stream().map(this::copyProductEntityToDto).collect(Collectors.toList());
	}

	public ProductDTO findByProductId(Long productId) {
		ProductEntity productEntity = productRepository.findById(productId)
				.orElseThrow(() -> new RecordNotFoundException("product id '" + productId + "' does not exist !"));
		return copyProductEntityToDto(productEntity);
	}

	public BaseResponse createOrUpdateProduct(ProductDTO productDTO) {
		ProductEntity productEntity = copyProductDtoToEntity(productDTO);
		productRepository.save(productEntity);
		return new BaseResponse(Topic.Product.getName() + CustomMessage.SAVE_SUCCESS_MESSAGE, HttpStatus.CREATED.value());
	}

	public BaseResponse deleteProduct(Long productId) {
		if (productRepository.existsById(productId)) {
			productRepository.deleteById(productId);
		} else {
			throw new RecordNotFoundException("No record found for given id: " + productId);
		}
		return new BaseResponse(Topic.Product.getName() + CustomMessage.DELETE_SUCCESS_MESSAGE, HttpStatus.OK.value());
	}

	private ProductDTO copyProductEntityToDto(ProductEntity productEntity) {
		ProductDTO productDTO = new ProductDTO();
		BeanUtils.copyProperties(productEntity, productDTO);
		return productDTO;
	}

	private ProductEntity copyProductDtoToEntity(ProductDTO productDTO) {
		ProductEntity productEntity = new ProductEntity();
		BeanUtils.copyProperties(productDTO, productEntity);
		return productEntity;
	}

}
