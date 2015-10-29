package com.mycompany.projeto2;



public class loginBean {

    private String login;
    private String senha;
    private int perfil;
    

    /** Creates a new instance of CadastroBean */
    public loginBean() {
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }

    public int getPerfil() {
        return perfil;
    }

   
}
