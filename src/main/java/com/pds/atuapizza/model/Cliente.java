package com.pds.atuapizza.model;

import jakarta.persistence.Entity;

@Entity
public class Cliente extends Pessoa {
    
    private Endereco endereco;

    public Cliente() {
    }

    public Cliente(String nome, String login, String senha, Endereco endereco) {
        super(nome, login, senha);
        this.endereco = endereco;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

}
