package services;

import models.Music;

import java.util.List;

public interface UserMusicService {
    List<Music> getAllById(Long userId);
    void deleteMusicByUserId(Long userId, Long musicId);
    void addMusicByUserId(Long userId, Long musicId);
}
