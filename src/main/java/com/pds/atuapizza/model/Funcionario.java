package com.pds.atuapizza.model;

import jakarta.persistence.Entity;

@Entity
public class Funcionario extends Pessoa {
    
    private boolean permissao = true;

    public Funcionario() {
    }

    public Funcionario(String nome, String login, String senha, boolean permissao) {
        super(nome, login, senha);
        this.permissao = permissao;
    }

    public boolean isPermissao() {
        return permissao;
    }

    public void setPermissao(boolean permissao) {
        this.permissao = permissao;
    }
}
