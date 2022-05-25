package com.mycompany.faxinaapp;
import java.util.Scanner;
public class Agendamento {
    private String tiposervico;
    private String data;
    private String horario;
    private String profissional;
    
    
    public void tipoServico(){
    float numero1, numero2, numero3; 
    int operacao;
    Scanner entrada = new Scanner(System.in);
    
    System.out.print("Digite um nÃºmero de 1 a 3: ");
    operacao = entrada.nextInt();
    
    switch(operacao)
    {
        case 1:
            System.out.println("Você optou pela faxina simples e o valor dela é 45$");
            break;
        case 2:
            System.out.println("Você optou pela faxina média e o valor dela é 80$");
            break;
        case 3:
            System.out.println("Você optou pela faxina completa e o valor dela é 120$");

    }
    
    }     
}
