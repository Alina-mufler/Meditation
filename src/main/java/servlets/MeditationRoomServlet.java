package servlets;

import services.MusicService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/meditationRoom")
public class MeditationRoomServlet extends HttpServlet {

    private String BASE_CONTEXT;

    @Override
    public void init(ServletConfig config) throws ServletException {
        BASE_CONTEXT = (String) config.getServletContext().getAttribute("baseContext");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getSession(false) != null && req.getSession(false).getAttribute("id") != null) {
            req.getRequestDispatcher("WEB-INF/jsp/meditationRoom.jsp").forward(req, resp);
        } else {
            resp.sendRedirect(BASE_CONTEXT);
        }
    }
}
