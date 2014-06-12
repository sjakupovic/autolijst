
package topgear;

import java.text.DecimalFormatSymbols;
import java.text.DecimalFormat;

public class Auto {
    private String img, merk, model, vermogen, cc, gewicht, topsnelheid, acceleratie;
    private int prijs;
    
    public Auto(String img, String merk, String model, int prijs, String vermogen, String cc, String gewicht, String topsnelheid, String acceleratie){
        this.img = img;
        this.merk = merk;
        this.model = model;
        this.prijs = prijs;
        this.vermogen = vermogen;
        this.cc = cc;
        this.gewicht = gewicht;
        this.topsnelheid = topsnelheid;
        this.acceleratie = acceleratie;
    }

    public String getImg() {
        return img;
    }

    public String getMerk() {
        return merk;
    }
    
    public String getModel() {
        return model;
    }

    public int getPrijs() {
        return prijs;
    }

    public String getVermogen() {
        return vermogen;
    }

    public String getCc() {
        return cc;
    }

    public String getGewicht() {
        return gewicht;
    }

    public String getTopsnelheid() {
        return topsnelheid;
    }

    public String getAcceleratie() {
        return acceleratie;
    }
    
    public String getPrijsFormat() {
        DecimalFormatSymbols dfs = new DecimalFormatSymbols();
        dfs.setDecimalSeparator(',');
        dfs.setGroupingSeparator('.'); 
    	DecimalFormat df = new DecimalFormat("#,##0.-",dfs);
    	double prijs = (double) this.getPrijs();
    	String sPrijs = df.format(prijs);
    	return sPrijs;
    }
}
