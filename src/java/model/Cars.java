
package model;



public class Cars {
  
    private int carID;
    private int carYear;
    private String carMake;
    private String carModel;
    private int carHP;

    
    public Cars() {
        this.carID = 0;
        this.carYear = 0;
        this.carMake = "";
        this.carModel = "";
        this.carHP = 0;
    }

    
    public Cars(int carID, int carYear, String carMake, String carModel, int carHP) {
        this.carID = carID;
        this.carYear = carYear;
        this.carMake = carMake;
        this.carModel = carModel;
        this.carHP = carHP;
    }
    
   
    public int getCarID() {
        return carID;
    }

    public void setCarID(int carID) {
        this.carID = carID;
    }

    public int getCarYear() {
        return carYear;
    }

    public void setCarYear(int carYear) {
        this.carYear = carYear;
    }

    public String getCarMake() {
        return carMake;
    }

    public void setCarMake(String carMake) {
        this.carMake = carMake;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public int getCarHP() {
        return carHP;
    }

    public void setCarHP(int carHP) {
        this.carHP = carHP;
    }

    @Override
    public String toString() {
        return "Cars{" + "carID=" + carID + ", carYear=" + carYear + ", carMake=" + carMake + ", carModel=" + carModel + ", carHP=" + carHP + '}';
    }
    
    
           
    
    
}
