void main(){
  Car obj = Car();
  obj.brand = "BMW Brand";
  obj.model = "BMW X1";
  obj.year = 2022;
  print(obj.brand);
  print(obj.model);
  print(obj.year);
}

class Car{
  late String brand;
  late String model;
  late int year;
  late double milesDriven;


}

void  drive(double miles){
  millesDrive +=miles;

}


double getMilesDriven(){
  return milesDriven;
}

String getBrand(){
  return brand;
}

int getYear(){
  return year;
}

int getAge(){
  return year;
}


