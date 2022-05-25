package com.mycompany.faxinaapp;
public class Contratante extends Pessoa  {
   private String endereco;

    public Contratante(String nome, String cpf) {
        super(nome, cpf);
        System.out.println("Nome do Contratante: " + nome);
    }
   
    private void contrata() {
           
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String rua, int numero, String bairro, int cep, String cidade) {
        System.out.println("----ENDEREÇO DO CONTRATANTE----");
        System.out.println("Rua: " + rua);
        System.out.println("Numero: " + numero);
        System.out.println("Bairro: " + bairro);
        System.out.println("CEP: " + cep);
        System.out.println("Cidade: " + cidade);
    }
}

