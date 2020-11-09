package repositories;

import models.Music;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class UserMusicRepositoryImpl implements UserMusicRepository {

    private DataSource dataSource;

    //language=SQL
    private static final String SQL_GET_MUSIC_BY_USER_ID = "select * from userMusic where userId = ?";
    //language=SQL
    private static final String SQL_REMOVE_MUSIC = "UPDATE userMusic SET musicId = array_remove(musicId,?) where userId=?";
    //language=SQL
    private static final String SQL_ADD_MUSIC = "UPDATE userMusic SET musicId = array_append(musicId,?) where userId=?";


    public UserMusicRepositoryImpl(DataSource dataSource) {
        this.dataSource = dataSource;
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
        return Optional.empty();
    }

    @Override
    public List<Music> findAll() {
        return null;
    }

    @Override
    public void save(Long userId, Long musicId) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_ADD_MUSIC, Statement.RETURN_GENERATED_KEYS);
            statement.setLong(2, userId);
            statement.setLong(1, musicId);
            int affectedRows = statement.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Problem with save Film");
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        } finally {
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException throwables) {
            }
        }
    }

    @Override
    public void delete(Long userId, Long musicId) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_REMOVE_MUSIC, Statement.RETURN_GENERATED_KEYS);
            statement.setLong(2, userId);
            statement.setLong(1, musicId);
            int affectedRows = statement.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Problem with save Film");
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        } finally {
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException throwables) {
            }
        }
    }

    @Override
    public List<Long> getAllById(Long userId) {
        Connection connection = null;
        PreparedStatement statement = null;
        List<Long> musicList = new ArrayList<>();

        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_GET_MUSIC_BY_USER_ID);
            statement.setLong(1, userId);

            try (ResultSet setOfWatched = statement.executeQuery()) {
                if (setOfWatched.next()) {
                    Long[] arr = (Long[]) setOfWatched.getArray("musicId").getArray();
                    musicList.addAll(Arrays.asList(arr));
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
        return musicList;
    }
}
