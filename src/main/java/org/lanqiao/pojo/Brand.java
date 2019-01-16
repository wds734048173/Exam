package org.lanqiao.pojo;

import lombok.*;

import java.util.Date;

/**
 * @Auther: WDS
 * @Date: 2019/1/13 08:52
 * @Description:
 */
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class Brand {
    private int id;
    private String name;
    private int state;
    private String pic;
    private int storeId;
    private Date ctime;
    private Date rtime;
}
