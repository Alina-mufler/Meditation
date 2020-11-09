package servlets;

import services.UserMusicService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userMusic")
public class UserMusicServlet extends HttpServlet {

    private UserMusicService userMusicService;
    private String BASE_CONTEXT;

    @Override
    public void init(ServletConfig config) throws ServletException {
        userMusicService = (UserMusicService) config.getServletContext().getAttribute("userMusicService");
        BASE_CONTEXT = (String) config.getServletContext().getAttribute("baseContext");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getHeader("action").equals("0")) {
            userMusicService.addMusicByUserId((Long) req.getSession(false).getAttribute("id"),
                    Long.parseLong(req.getHeader("musicId")));
        } else {
            userMusicService.deleteMusicByUserId((Long) req.getSession(false).getAttribute("id"),
                    Long.parseLong(req.getHeader("musicId")));
        }
    }
}
