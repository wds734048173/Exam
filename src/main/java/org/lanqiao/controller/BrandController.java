package org.lanqiao.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.lanqiao.pojo.Brand;
import org.lanqiao.service.IBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @Auther: WDS
 * @Date: 2019/1/13 09:01
 * @Description:
 */
@Controller
public class BrandController {
    @Autowired
    IBrandService brandService;
    @RequestMapping("/brandList.do")
    public String selectBrandAll(HttpServletRequest req, HttpServletResponse resp, Model model){
        int pageNum = 1;
        int pageSize = 5;
        if(req.getParameter("currentPage") != null && !"".equals(req.getParameter("currentPage"))){
            pageNum = Integer.valueOf(req.getParameter("currentPage"));
        }
        if(req.getParameter("pageSize") != null && !"".equals(req.getParameter("pageSize"))){
            pageSize = Integer.valueOf(req.getParameter("pageSize"));
        }
        PageHelper.startPage(pageNum,pageSize);
        List<Brand> brandList = brandService.getBrandList();
        PageInfo<Brand> info = new PageInfo<>(brandList);
        model.addAttribute("brandList",brandList);
        model.addAttribute("pageInfo",info);
        return "brandList";
    }
}
