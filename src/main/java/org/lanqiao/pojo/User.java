package org.lanqiao.pojo;

import lombok.*;

/**
 * @Auther: WDS
 * @Date: 2019/1/12 20:10
 * @Description:
 */
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class User {
    private String username;
    private String password;
}
