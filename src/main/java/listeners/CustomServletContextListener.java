package listeners;

import org.springframework.jdbc.datasource.DriverManagerDataSource;
import repositories.*;
import services.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class CustomServletContextListener  implements ServletContextListener {

    private static final String BASE_CONTEXT = "localhost:8080/Meditation";
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/Meditation";
    private static final String DB_USERNAME = "postgres";
    private static final String DB_PASSWORD = "Lovelovelove%5";
    private static final String DB_DRIVER = "org.postgresql.Driver";

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext servletContext = sce.getServletContext();
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(DB_DRIVER);
        dataSource.setUsername(DB_USERNAME);
        dataSource.setUrl(DB_URL);
        dataSource.setPassword(DB_PASSWORD);


        UsersRepository usersRepository = new UsersRepositoryImplJdbc(dataSource);
        MusicRepositoryImpl musicRepository = new MusicRepositoryImpl(dataSource);
        UserMusicRepository userMusicRepository = new UserMusicRepositoryImpl(dataSource);


        SignUpService signUpService = new SignUpServiceImpl(usersRepository);
        LoginService loginService = new LoginServiceImpl(usersRepository);
        MusicService musicService = new MusicServiceImpl(musicRepository);
        UserMusicService userMusicService = new UserMusicServiceImpl(userMusicRepository, musicRepository);
        UserService userService = new UserServiceImpl(usersRepository);

        servletContext.setAttribute("signUpService", signUpService);
        servletContext.setAttribute("loginService", loginService);
        servletContext.setAttribute("musicService", musicService);
        servletContext.setAttribute("userMusicService", userMusicService);
        servletContext.setAttribute("baseContext", BASE_CONTEXT);
        servletContext.setAttribute("userService", userService);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }


}
