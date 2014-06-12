package topgear;


import java.util.ArrayList;


public class AutoOverzicht {
    private ArrayList<Auto> autolijst = new ArrayList<>();
    
    public AutoOverzicht() {
        Auto auto1 = (new Auto("audi_a1", "Audi", "A1", 23000, "140 pk", "1.4L", "1095 kg", "212 km/h", "10,5 s"));
        Auto auto2 = (new Auto("audi_a3", "Audi", "A3", 23000, "105 pk", "1.2L", "1155 kg", "203 km/h", "10,5 s"));
        Auto auto3 = (new Auto("audi", "Audi", "R8", 123000, "525 pk", "5.2L", "1595 kg", "316 km/h", "10,5 s"));
        Auto auto4 = (new Auto("ferrari_enzo", "Ferrari", "Enzo", 200000, "660 pk", "6.0L", "1365 kg", "350 km/h", "10,5 s"));
        Auto auto5 = (new Auto("ferrari_testarossa", "Ferrari", "Testarossa", 209000, "390 pk", "4.9L", "1505 kg", "290 km/h", "10,5 s"));
        Auto auto6 = (new Auto("fiat_500", "Fiat", "500", 12000, "100 pk", "1.4L", "905 kg", "182 km/h", "10,5 s"));
        Auto auto7 = (new Auto("fiat_bravo", "Fiat", "Bravo", 23000, "140 pk", "1.4L", "1250 kg", "204 km/h", "8,9 s"));
        Auto auto8 = (new Auto("fiat_punto", "Fiat", "Punto", 16000, "95 pk", "1.4L", "1035 kg", "178 km/h", "11,4 s"));
        Auto auto9 = (new Auto("ford_fiesta", "Ford", "Fiesta", 14000, "100 pk", "1.0L", "954 kg", "180 km/h", "11,2 s"));
        Auto auto10 = (new Auto("ford_focus", "Ford", "Focus", 25000, "100 pk", "1.6L", "1155 kg", "172 km/h", "13,6 s"));
        Auto auto11 = (new Auto("ford_mondeo", "Ford", "Mondeo", 28000, "100 pk", "1.4L", "905 kg", "182 km/h", "10,5 s"));
        Auto auto12 = (new Auto("maserati_ghibli", "Maserati", "Ghibli", 120000, "100 pk", "1.4L", "905 kg", "182 km/h", "10,5 s"));
        Auto auto13 = (new Auto("maserati_quattroporte", "Maserati", "Quattroporte", 160000, "100 pk", "1.4L", "905 kg", "182 km/h", "10,5 s"));
        Auto auto14 = (new Auto("opel_astra", "Opel", "Astra", 22000, "100 pk", "1.4L", "905 kg", "182 km/h", "10,5 s"));
        Auto auto15 = (new Auto("opel_corsa", "Opel", "Corsa", 14000, "100 pk", "1.4L", "905 kg", "182 km/h", "10,5 s"));
        Auto auto16 = (new Auto("opel_mokka", "Opel", "Mokka", 11000, "100 pk", "1.4L", "905 kg", "182 km/h", "10,5 s"));
        Auto auto17 = (new Auto("porsche_cayenne", "Porsche", "Cayenne", 85000, "100 pk", "1.4L", "905 kg", "182 km/h", "10,5 s"));
        Auto auto18 = (new Auto("porsche_panamera", "Porsche", "Panamera", 120000, "100 pk", "1.4L", "905 kg", "182 km/h", "10,5 s"));
        Auto auto19 = (new Auto("porsche_911", "Porsche", "911", 126000, "100 pk", "1.4L", "905 kg", "182 km/h", "10,5 s"));
        
        autolijst.add(auto1);
        autolijst.add(auto2);
        autolijst.add(auto3);
        autolijst.add(auto4);
        autolijst.add(auto5);
        autolijst.add(auto6);
        autolijst.add(auto7);
        autolijst.add(auto8);
        autolijst.add(auto9);
        autolijst.add(auto10);
        autolijst.add(auto11);
        autolijst.add(auto12);
        autolijst.add(auto13);
        autolijst.add(auto14);
        autolijst.add(auto15);
        autolijst.add(auto16);
        autolijst.add(auto17);
        autolijst.add(auto18);
        autolijst.add(auto19);
        
    }

    public ArrayList<Auto> getAutolijst() {
        return autolijst;
    }
    
}
