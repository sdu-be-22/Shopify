package kz.microhard.microauth.repository;

import kz.microhard.microauth.model.MyUser;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface MyUserDetailRepository extends JpaRepository<MyUser,Integer> {

    Optional<MyUser> findByUsername(String name);

}
