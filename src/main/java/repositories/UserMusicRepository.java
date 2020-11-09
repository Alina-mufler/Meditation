package repositories;

import models.Music;

import java.util.List;

public interface UserMusicRepository extends CrudRepository<Music> {
    void save(Long userId, Long musicId);
    void delete (Long userId, Long musicId);
    List<Long> getAllById(Long userId);
}
