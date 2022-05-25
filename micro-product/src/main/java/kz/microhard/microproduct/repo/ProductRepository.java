package kz.microhard.microproduct.repo;

import kz.microhard.microproduct.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {

}
