class Car {

  String brand;
  String model;
  int year;
  double milesDriven;


  static int numberOfCars = 0;


  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }


  void drive(double miles) {
    milesDriven += miles;
  }


  double getMilesDriven() => milesDriven;
  String getBrand() => brand;
  String getModel() => model;
  int getYear() => year;


  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {

  Car car1 = Car('Toyota', 'Corolla', 2015, 50000);
  Car car2 = Car('Honda', 'Civic', 2018, 30000);
  Car car3 = Car('BanglaCar', 'GloryAuto', 2020, 10000);


  car1.drive(1500);
  car2.drive(2000);
  car3.drive(500);


  print('Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} has driven ${car1.getMilesDriven()} miles and is ${car1.getAge()} years old.');
  print('Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} has driven ${car2.getMilesDriven()} miles and is ${car2.getAge()} years old.');
  print('Car 3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} has driven ${car3.getMilesDriven()} miles and is ${car3.getAge()} years old.');


  print('Total number of cars created: ${Car.numberOfCars}');
}
