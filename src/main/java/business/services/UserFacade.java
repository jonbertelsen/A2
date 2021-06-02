package business.services;

import business.entities.User;
import business.persistence.Database;
import business.persistence.UserMapper;
import business.exceptions.UserException;

public class UserFacade
{
    UserMapper userMapper;

    public UserFacade(Database database)
    {
        userMapper = new UserMapper(database);
    }

    public User login(String email, String password) throws UserException
    {
        return userMapper.login(email, password);
    }

    public User createUser(String name, String email,String address, String tele_number, String password, String role  ) throws UserException
    {
        User user = new User(name, email,address, tele_number, password, "customer");
        userMapper.createUser(user);
        return user;
    }

}
