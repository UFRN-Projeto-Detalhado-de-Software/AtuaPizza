package com.pds.atuapizza.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class controller {

    @GetMapping("/")
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @GetMapping("/pedido")
    public ModelAndView pedido() {
        return new ModelAndView("pedido");
    }

    @GetMapping("/pedido_finalizado")
    public ModelAndView pedido_finalizado() {
        return new ModelAndView("pedidoFinalizado");
    }

    @GetMapping("/cardapio")
    public ModelAndView cardapio() {
        return new ModelAndView("cardapio");
    }
}