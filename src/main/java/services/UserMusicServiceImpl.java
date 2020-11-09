package services;

import models.Music;
import repositories.MusicRepository;
import repositories.UserMusicRepository;

import java.util.ArrayList;
import java.util.List;

public class UserMusicServiceImpl implements UserMusicService {

    private UserMusicRepository userMusicRepository;
    private MusicRepository musicRepository;

    public UserMusicServiceImpl(UserMusicRepository userMusicRepository, MusicRepository musicRepository) {
        this.userMusicRepository = userMusicRepository;
        this.musicRepository = musicRepository;
    }

    @Override
    public List<Music> getAllById(Long userId) {
        List<Music> returned = new ArrayList<>();

        for (Long id : userMusicRepository.getAllById(userId)) {
            returned.add(musicRepository.findById(id).get());
        }

        return returned;
    }

    @Override
    public void deleteMusicByUserId(Long userId, Long musicId) {
        userMusicRepository.delete(userId, musicId);
    }

    @Override
    public void addMusicByUserId(Long userId, Long musicId) {
        userMusicRepository.save(userId, musicId);
    }
}
