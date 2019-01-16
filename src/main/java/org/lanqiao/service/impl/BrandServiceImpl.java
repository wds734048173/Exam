package org.lanqiao.service.impl;

import org.lanqiao.mapper.BrandMapper;
import org.lanqiao.pojo.Brand;
import org.lanqiao.service.IBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: WDS
 * @Date: 2019/1/13 09:00
 * @Description:
 */
@Service("brandService")
public class BrandServiceImpl implements IBrandService {
    @Autowired
    BrandMapper brandMapper;

    @Override
    public List<Brand> getBrandList() {
        return brandMapper.selectBrandList();
    }
}
