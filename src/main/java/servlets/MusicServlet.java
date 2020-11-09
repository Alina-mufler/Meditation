package servlets;

import jdk.nashorn.internal.parser.JSONParser;
import models.Music;
import org.json.JSONArray;
import services.MusicService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;

@WebServlet("/music")
public class MusicServlet extends HttpServlet {

    private MusicService musicService;
    private String BASE_CONTEXT;

    @Override
    public void init(ServletConfig config) throws ServletException {
        musicService = (MusicService) config.getServletContext().getAttribute("musicService");
        BASE_CONTEXT = (String) config.getServletContext().getAttribute("baseContext");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = new PrintWriter(new OutputStreamWriter(
                response.getOutputStream(), StandardCharsets.UTF_8), true);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        JSONArray array = new JSONArray();
        for (Music music : musicService.findAll()) {
            JSONArray tmp = new JSONArray();
            tmp.put(music.getId());
            tmp.put(music.getMusicName());

            array.put(tmp);
        }

        out.print(array);
        out.flush();
    }
}
