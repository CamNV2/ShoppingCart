package com.example.demo.Controller;

import com.example.demo.Entity.Product;
import com.example.demo.Repository.ProductRepository;
import com.example.demo.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {
    @Autowired
    ProductService productService ;

    @RequestMapping({"/" , "/index"})
    public String index(Model model){
        model.addAttribute("product" , productService.getList());
        return "index" ;
    }
    @GetMapping("/shop")
    public String shop(Model model){
        model.addAttribute("product" , productService.getList());
        return "shop";
    }
    @RequestMapping("/cart")
    public String Cart(Model model){
        return "cart";
    }
    @RequestMapping("/product/{id}")
    public String product(@PathVariable("id") Product product , Model model){
        model.addAttribute("product" , product);
        return "product" ;
    }
}
