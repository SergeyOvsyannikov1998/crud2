package web.dao;

import web.model.User;

import java.util.List;

public interface UserDao  {
    void addUser(User user);
    void removeUser(Long id);
    void updateUser(User user, Long id);
    User getUser(Long id);
    List<User> getAllUsers();
    User getUserByName(String name);
}
