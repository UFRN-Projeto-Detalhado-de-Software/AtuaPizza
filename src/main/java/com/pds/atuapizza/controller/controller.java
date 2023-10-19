package com.pds.atuapizza.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class controller {

    @RequestMapping("/")
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @RequestMapping("/pedido")
    public ModelAndView pedido() {
        return new ModelAndView("pedido");
    }

    @RequestMapping("/pedido_finalizado")
    public ModelAndView pedido_finalizado() {
        return new ModelAndView("pedidoFinalizado");
    }

    @RequestMapping("/cardapio")
    public ModelAndView cardapio() {
        return new ModelAndView("cardapio");
    }
}