package com.example.bank.user;

import com.example.bank._core.utils.ApiUtil;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;
    private final HttpSession session;

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody UserRequest.LoginDTO reqDTO){
        String jwt = userService.로그인(reqDTO.getUsername(), reqDTO.getPassword());
        return ResponseEntity.ok().header("Authorization","Bearer "+jwt).body(new ApiUtil(null));
    }
}
