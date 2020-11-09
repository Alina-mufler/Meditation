package services;

import models.User;

import java.util.Optional;

public interface UserService {
    Optional<User> getUserInfo(Long id);
    Optional<User> getUserById(Long id);
}
