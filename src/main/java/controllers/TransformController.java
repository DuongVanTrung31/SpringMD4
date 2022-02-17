package controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TransformController {
    @GetMapping("/transform")
    public String view(){
        return "transform";
    }
    @PostMapping("/transform")
    public ModelAndView result(@RequestParam("usd") String usd, @RequestParam("rate") String rate){
        ModelAndView modelAndView = new ModelAndView("transform");
        int result = Integer.parseInt(usd) * Integer.parseInt(rate);
        modelAndView.addObject("result",result);
        return modelAndView;
    }
}
