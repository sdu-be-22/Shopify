package kz.microhard.microdelivery.repo;

import kz.microhard.microdelivery.entity.AddressEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AddressRepository extends JpaRepository<AddressEntity, Long> {

}
