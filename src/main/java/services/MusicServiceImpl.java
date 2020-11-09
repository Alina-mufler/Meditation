package services;

import com.sun.media.protocol.DataSource;
import dto.MusicForm;
import javafx.scene.shape.Path;
import models.Music;
import repositories.MusicRepository;

import javax.media.Manager;
import javax.media.Player;
import java.io.File;
import java.net.URL;
import java.nio.file.Paths;
import java.util.List;

public class MusicServiceImpl implements MusicService {
    private MusicRepository musicRepository;
    private String musicPath;

    public MusicServiceImpl(MusicRepository musicRepository) {
        this.musicRepository = musicRepository;
        musicPath = "../webapp/music/";
    }

    @Override
    public List<Music> findAll() {
        return musicRepository.findAll();
    }
}
