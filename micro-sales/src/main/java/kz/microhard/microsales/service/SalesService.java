package kz.microhard.microsales.service;

import kz.microhard.microsales.common.exceptions.RecordNotFoundException;
import kz.microhard.microsales.common.messages.BaseResponse;
import kz.microhard.microsales.common.messages.CustomMessage;
import kz.microhard.microsales.common.utils.Topic;
import kz.microhard.microsales.dto.SalesDTO;
import kz.microhard.microsales.entity.SalesEntity;
import kz.microhard.microsales.repo.SalesRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class SalesService {

	@Autowired
	private SalesRepository salesRepository;

	public List<SalesDTO> findSalesList() {
		return salesRepository.findAll().stream().map(this::copySalesEntityToDto).collect(Collectors.toList());
	}

	public SalesDTO findBySalesId(Long salesId) {
		SalesEntity userEntity = salesRepository.findById(salesId)
				.orElseThrow(() -> new RecordNotFoundException("Sales id '" + salesId + "' does not exist !"));
		return copySalesEntityToDto(userEntity);
	}

	public BaseResponse createOrUpdateSales(SalesDTO salesDTO) {
		SalesEntity salesEntity = copySalesDtoToEntity(salesDTO);
		salesRepository.save(salesEntity);
		return new BaseResponse(Topic.Sales.getName() + CustomMessage.SAVE_SUCCESS_MESSAGE, HttpStatus.CREATED.value());

	}

	public void updateSales(SalesDTO salesDTO) {
		SalesEntity salesEntity = copySalesDtoToEntity(salesDTO);
		salesRepository.save(salesEntity);
	}

	public BaseResponse deleteSales(Long salesId) {
		if (salesRepository.existsById(salesId)) {
			salesRepository.deleteById(salesId);
		} else {
			throw new RecordNotFoundException("No record found for given id: " + salesId);
		}
		return new BaseResponse(Topic.Sales.getName() + CustomMessage.DELETE_SUCCESS_MESSAGE, HttpStatus.OK.value());
	}


	private SalesDTO copySalesEntityToDto(SalesEntity salesEntity) {
		SalesDTO salesDTO = new SalesDTO();
		BeanUtils.copyProperties(salesEntity, salesDTO);
		return salesDTO;
	}

	private SalesEntity copySalesDtoToEntity(SalesDTO salesDTO) {
		SalesEntity userEntity = new SalesEntity();
		BeanUtils.copyProperties(salesDTO, userEntity);
		return userEntity;
	}

}
