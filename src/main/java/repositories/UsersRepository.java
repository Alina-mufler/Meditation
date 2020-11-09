package repositories;

import models.User;

import java.util.Optional;

public interface UsersRepository extends CrudRepository<User>{
    Optional<User> getUserByEmail(String email);
    Optional<User> findByID(Long id);
}
