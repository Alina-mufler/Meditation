package services;

import dto.LoginForm;
import models.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import repositories.UsersRepository;

import java.util.Optional;

public class LoginServiceImpl implements LoginService {
    private UsersRepository usersRepository;
    private PasswordEncoder  passwordEncoder;

    public LoginServiceImpl(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
        this.passwordEncoder = new BCryptPasswordEncoder();
    }


    @Override
    public Long login(LoginForm form) {
        String email = form.getEmail();
        String password = form.getPassword();

        if( usersRepository.getUserByEmail(email).isPresent()){
            Optional<User> user = usersRepository.getUserByEmail(email);
            if(passwordEncoder.matches(password, user.get().getHashPassword())){
                return user.get().getId();
            }
            else return (long) -1;
        } else return (long) -2;
    }

}