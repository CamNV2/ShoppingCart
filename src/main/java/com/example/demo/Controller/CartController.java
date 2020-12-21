package com.example.demo.Controller;

import com.example.demo.Entity.Product;
import com.example.demo.Model.Cart;
import com.example.demo.Model.CartItem;
import com.example.demo.Model.ManagerCart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private ManagerCart managerCart ;





    @RequestMapping("/add" )
    public String add(HttpSession session , @RequestParam("id") Product product ,
                      @RequestParam(value = "qty" , required = true , defaultValue = "1") int qty)
    {
        Cart cart = managerCart.getCart(session);
        cart.addItem(product , qty);
        return "cart" ;
    }

    @RequestMapping("/remove")
    public String remove(HttpSession session , @RequestParam("id") Product product){
        Cart cart = managerCart.getCart(session);
        cart.removeItem(product);
        return "cart";
    }

    @RequestMapping("/update")
    public String update(HttpSession session , @RequestParam("id") Product product,
                         @RequestParam("qty") int qty )
    {
        Cart cart = managerCart.getCart(session);
        cart.updateItem(product , qty);
        return "cart" ;
    }
}
