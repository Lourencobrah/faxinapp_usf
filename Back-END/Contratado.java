package com.mycompany.faxinaapp;
public class Contratado extends Pessoa {
    private String material;

    public Contratado(String nome, String cpf) {
        super(nome, cpf);
        System.out.println("Nome do Contratado: " + nome);
    }
    public String getMaterial() {
        return material;
    }
    public void setMaterial(String nome, int quantidade, float valor) {
        System.out.println("----MATERIAL A SER USADO----");
        System.out.println("Nome do material: " + nome);
        System.out.println("Quantidade de materiais: " + quantidade);
        System.out.println("Valor dos materiais: " + valor);
    } 
}

