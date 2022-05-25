package com.mycompany.faxinaapp;
public class Faxinapp {
    public static void main(String[] args) {
        Contratado c1 = new Contratado("Vinicius", "398-328-788-37");
        Contratante cc = new Contratante ("Roberto", "318-122-333-98");
        Agendamento a1 = new Agendamento();
          
        c1.setMaterial("Bucha", 10, 100f);
        c1.setMaterial("Rodo", 1, 12f);
        
        cc.setEndereco("Carlos Quaglia", 184, "Centenario", 13253300, "Itatiba");
        
        a1.tipoServico();
        
       
    }
}

