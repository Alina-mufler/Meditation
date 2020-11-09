package repositories;

import models.Music;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class MusicRepositoryImpl implements MusicRepository {
    private DataSource dataSource;

    //language=SQL
    private static final String SQL_GET_MUSIC_BY_ID = "select * from music where id = ?";
    //language=SQL
    private static final String SQL_GET_MUSIC_BY_MUSIC_NAME = "select * from music where musicname = ?";
    //language=SQL
    private static final String  SQL_FIND_ALL = "select * from music";


    public MusicRepositoryImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    public Optional<Music> getMusicByMusicName(String musicName) {
        Connection connection = null;
        PreparedStatement statement = null;
        Optional<Music> musicByMusicName = Optional.empty();

        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_GET_MUSIC_BY_MUSIC_NAME);
            statement.setString(1, musicName);

            try (ResultSet isMusicByMusicName = statement.executeQuery()) {
                if (isMusicByMusicName.next()) {
                    Music music = Music.builder().id(isMusicByMusicName.getLong("id"))
                            .musicName(isMusicByMusicName.getString("musicName")).build();
                    musicByMusicName = Optional.of(music);
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException throwables) {
            }
        }

        return musicByMusicName;
    }

    @Override
    public void save(Music entity) {

    }

    @Override
    public void update(Music entity) {

    }

    @Override
    public void delete(Music entity) {

    }

    @Override
    public Optional<Music> findById(Long id) {
        Connection connection = null;
        PreparedStatement statement = null;
        Optional<Music> musicById = Optional.empty();

        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_GET_MUSIC_BY_ID);
            statement.setLong(1, id);

            try (ResultSet isMusicByID = statement.executeQuery()) {
                if (isMusicByID.next()) {
                    Music music = Music.builder().id(isMusicByID.getLong("id"))
                            .musicName(isMusicByID.getString("musicName")).build();
                    musicById = Optional.of(music);
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException throwables) {
            }
        }

        return musicById;
    }

    @Override
    public List<Music> findAll() {
        Connection connection = null;
        PreparedStatement statement = null;
        List<Music> allMusics = new ArrayList<>();

        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_FIND_ALL);

            try (ResultSet setOfAllMusics = statement.executeQuery()) {
                while (setOfAllMusics.next()) {
                    Music music = Music.builder().id(setOfAllMusics.getLong("id"))
                            .musicName(setOfAllMusics.getString("musicName")).build();
                    allMusics.add(music);
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {

                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {

                }
            }
        }
        return allMusics;
    }
}
