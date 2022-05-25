package kz.microhard.microtemplate.repo;

import kz.microhard.microtemplate.entity.TempEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TemplateRepository extends JpaRepository<TempEntity, Long> {

}
