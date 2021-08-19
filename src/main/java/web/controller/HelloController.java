package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import web.model.User;
import web.service.UserService;
import web.service.UserServiceImpl;

import java.security.Principal;
import java.util.List;

@Controller
public class HelloController {
    @Autowired
    private UserService userService;

    public HelloController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(value = "admin")
    public String welcome(ModelMap model) {
        List<User> users = userService.getAllUsers();

        model.addAttribute("users", users);
        return "main/index";
    }
    @GetMapping(value = "login")
    public String loginPage() {
        return "login";
    }
    @GetMapping(value = "/")
    public String first() {
        return "main/first";
    }
    @GetMapping("/user")
    public String selUser(Principal principal, Model model)  {
        model.addAttribute("user", userService.getUserByName(principal.getName()));

        return "user/user";
    }
}
