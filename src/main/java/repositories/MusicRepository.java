package repositories;

import models.Music;

import java.util.Optional;

public interface MusicRepository extends CrudRepository<Music>{
    Optional<Music> getMusicByMusicName(String musicName);

}
