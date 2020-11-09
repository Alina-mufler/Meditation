package services;

import dto.SignUpForm;
import models.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import repositories.UsersRepository;


public class SignUpServiceImpl implements SignUpService {
    private UsersRepository usersRepository;
    private PasswordEncoder passwordEncoder;

    public SignUpServiceImpl(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
        this.passwordEncoder = new BCryptPasswordEncoder();
    }

    @Override
    public Long signUp(SignUpForm form) {
        String email = form.getEmail();
        if (!usersRepository.getUserByEmail(email).isPresent()) {
            User user = User.builder()
                    .username(form.getUsername())
                    .email(form.getEmail())
                    .hashPassword(passwordEncoder.encode(form.getPassword()))
                    .build();


            usersRepository.save(user);
            return user.getId();

        } else {
            return (long) -1;
        }
    }
}
