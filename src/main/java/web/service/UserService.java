package web.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import web.model.User;

import java.util.List;

public interface UserService extends UserDetailsService{
    void addUser(User user);
    void removeUser(Long id);
    void updateUser(User user, Long id);
    User getUser(Long id);
    List<User> getAllUsers();

    User getUserByName(String name);

}
