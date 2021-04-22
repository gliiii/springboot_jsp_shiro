package com.glii.springboot_jsp_shiro.service;

import com.glii.springboot_jsp_shiro.entity.Perms;
import com.glii.springboot_jsp_shiro.entity.Role;
import com.glii.springboot_jsp_shiro.entity.User;

import java.util.List;

public interface UserService {
    void register(User user);

    User findByUserName(String username);

    User findRolesByUserName(String username);

    List<Perms> findPermsByRoleId(String id);
}
