class Car {
  String brand;
  String model;
  int year;
  double milesDriven;
  static int numberOfCars = 0;
  Car(
      {required this.brand,
        required this.model,
        required this.year,
        required this.milesDriven}) {

    numberOfCars++;
  }



  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}






void main() {
  Car car = Car(model: 'X2', brand: 'BMW', year: 2016, milesDriven: 4000);
  car.drive(1200);
  Car car2 =
  Car(brand: 'Volvo', model: 'XC90', year: 2016, milesDriven: 3100);
  car2.drive(5200);
  Car car3 =
  Car(model: 'Coaster', brand: 'Toyota', year: 2021, milesDriven: 1200);
  car3.drive(2100);
  print(
      '${car.getBrand()} ${car.getModel()} ${car.getYear()} has driven ${car.getMilesDriven()} miles and is ${car.getAge()} years old');
  print(
      '${car2.getBrand()} ${car2.getModel()} ${car2.getYear()}    has driven ${car2.getMilesDriven()} miles and is ${car2.getAge()} years  old');
  print(
      '${car3.getBrand()} ${car3.getModel()} ${car3.getYear()}   has driven ${car3.getMilesDriven()}  miles and is ${car3.getAge()} years  old');
  print('Total number of cars created: ${Car.numberOfCars}');
}
