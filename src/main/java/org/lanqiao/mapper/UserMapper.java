package org.lanqiao.mapper;

import org.lanqiao.pojo.User;
import org.springframework.stereotype.Repository;

/**
 * @Auther: WDS
 * @Date: 2019/1/12 20:11
 * @Description:
 */
@Repository
public interface UserMapper {
    public User selectUser(User user);
}
