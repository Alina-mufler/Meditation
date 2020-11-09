package repositories;

import models.User;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class UsersRepositoryImplJdbc implements UsersRepository {
    private DataSource dataSource;


    //language=SQL
    private static final String SQL_GET_USER_BY_EMAIL = "select * from service_user where email = ?";
    //language=SQL
    private static final String SQL_GET_USER_BY_ID = "select * from service_user where id = ?";
    //language=SQL
    private static final String SQL_INSERT = "insert into service_user (userName, email, hashpassword)" + "values (?,?,?)";
    //language=SQL
    private static final String SQL_FIND_ALL = "select * from service_user";

    private static final String SQL_INSERT_USER_MUSIC = "insert into userMusic (userId, musicId) values (?, '{}')";

    public UsersRepositoryImplJdbc(DataSource dataSource) {
        this.dataSource = dataSource;
    }


    @Override
    public Optional<User> findByID(Long id) {
        Connection connection = null;
        PreparedStatement statement = null;
        Optional<User> userByID = Optional.empty();

        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_GET_USER_BY_ID);
            statement.setLong(1, id);

            try (ResultSet isUserByID = statement.executeQuery()) {
                if (isUserByID.next()) {
                    User user = User.builder().id(isUserByID.getLong("id"))
                            .username(isUserByID.getString("username"))
                            .email(isUserByID.getString("email"))
                            .hashPassword(isUserByID.getString("hashPassword")).build();
                    userByID = Optional.of(user);
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

        return userByID;
    }

    @Override
    public Optional<User> getUserByEmail(String email) {
        Connection connection = null;
        PreparedStatement statement = null;
        Optional<User> userByEmail = Optional.empty();
        try {

            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_GET_USER_BY_EMAIL);
            statement.setString(1, email);

            try (ResultSet isUserByEmail = statement.executeQuery()) {
                if (isUserByEmail.next()) {
                    User user = User.builder()
                            .id(isUserByEmail.getLong("id"))
                            .username(isUserByEmail.getString("username"))
                            .email(isUserByEmail.getString("email"))
                            .hashPassword(isUserByEmail.getString("hashPassword")).build();
                    userByEmail = Optional.of(user);
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
        return userByEmail;

    }


    @Override
    public void save(User entity) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet generatedKeys = null;
        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_INSERT, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, entity.getUsername());
            statement.setString(2, entity.getEmail());
            statement.setString(3, entity.getHashPassword());
            int affectedRows = statement.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Problem with insert user");
            }

            generatedKeys = statement.getGeneratedKeys();


            if (generatedKeys.next()) {
                Long id = generatedKeys.getLong("id");
                entity.setId(id);

                statement = connection.prepareStatement(SQL_INSERT_USER_MUSIC, Statement.RETURN_GENERATED_KEYS);
                statement.setLong(1, id);
                affectedRows = statement.executeUpdate();

                if (affectedRows == 0) {
                    throw new SQLException("Problem with insert user");
                }
            } else {
                throw new SQLException("Problem with retrieve id");
            }

        } catch (SQLException e) {
            throw new IllegalStateException(e);
        } finally {
            if (generatedKeys != null) {
                try {
                    generatedKeys.close();
                } catch (SQLException e) {

                }
            }
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


    }

    @Override
    public void update(User entity) {

    }

    @Override
    public void delete(User entity) {

    }

    @Override
    public Optional<User> findById(Long id) {
return null;

    }



    @Override
    public List<User> findAll() {

        Connection connection = null;
        PreparedStatement statement = null;
        List<User> allUsers = new ArrayList<>();

        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_FIND_ALL);

            try (ResultSet setOfAllUsers = statement.executeQuery()) {
                while (setOfAllUsers.next()) {
                    User user = User.builder().id(setOfAllUsers.getLong("id"))
                            .username(setOfAllUsers.getString("firstName"))
                            .email(setOfAllUsers.getString("email"))
                            .hashPassword(setOfAllUsers.getString("hashPassword")).build();
                    allUsers.add(user);
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
        return allUsers;
    }

}
