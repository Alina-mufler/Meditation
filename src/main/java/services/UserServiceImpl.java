package services;

import models.User;
import repositories.UsersRepository;
import java.util.Optional;

public class UserServiceImpl implements UserService {

    private UsersRepository usersRepository;

    public UserServiceImpl(UsersRepository usersRepository){
        this.usersRepository = usersRepository;
    }
    @Override
    public Optional<User> getUserInfo(Long id) {

        if(usersRepository.findById(id).isPresent()){
            User user = usersRepository.findById(id).get();
            return Optional.of(user);
        }
        return Optional.empty();
    }

    @Override
    public Optional<User> getUserById(Long id) {
        Optional<User> user = usersRepository.findByID(id);
        return user;
    }


}
