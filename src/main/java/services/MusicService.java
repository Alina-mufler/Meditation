package services;

import dto.MusicForm;
import models.Music;

import java.util.List;

public interface MusicService {
    List<Music> findAll();
}
