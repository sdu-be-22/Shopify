package kz.microhard.microsales.repo;

import kz.microhard.microsales.entity.SalesEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SalesRepository extends JpaRepository<SalesEntity, Long> {

	SalesEntity findBySaleId(Long userId);
}
