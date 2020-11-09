package servlets;

import com.sun.org.apache.regexp.internal.RE;
import models.Music;
import models.User;
import org.json.JSONArray;
import services.MusicService;
import services.UserMusicService;
import services.UserService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Optional;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {

    private UserMusicService userMusicService;
    private UserService userService;
    private String BASE_CONTEXT;

    @Override
    public void init(ServletConfig config) throws ServletException {
        userMusicService = (UserMusicService) config.getServletContext().getAttribute("userMusicService");
        BASE_CONTEXT = (String) config.getServletContext().getAttribute("baseContext");
        userService = (UserService) config.getServletContext().getAttribute("userService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Optional<User> user;
        if(req.getSession(false) != null && req.getSession(false).getAttribute("id") != null) {
            user = userService.getUserById((Long) req.getSession().getAttribute("id"));
            if (user.isPresent()) {
                HttpSession session = req.getSession(false);
                session.setAttribute("userName", user.get().getUsername());
                session.setAttribute("email", user.get().getEmail());
                req.getRequestDispatcher("/WEB-INF/jsp/profile.jsp").forward(req, resp);
            } else {
                resp.sendRedirect(BASE_CONTEXT);
            }
        } else {
            resp.sendRedirect(BASE_CONTEXT);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = new PrintWriter(new OutputStreamWriter(
                response.getOutputStream(), StandardCharsets.UTF_8), true);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        List<Music> music = userMusicService.getAllById((Long) request.getSession(false).getAttribute("id"));
        JSONArray arr = new JSONArray();

        for(Music m : music){
            arr.put(m.getMusicName());
        }

        out.print(arr);
        out.flush();
    }
}
