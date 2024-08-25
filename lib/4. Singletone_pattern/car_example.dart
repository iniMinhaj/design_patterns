class Car {
  // Private constructor
  Car._privateConstructor();

  // Eager instantiation for Thread safety
  // The static instance of the class
  static final Car _instance = Car._privateConstructor();

  // Public access point for the singleton instance
  static Car get instance => _instance;

  void drive() {
    print("Driving the car...");
  }
}

void main() {
  var car1 = Car.instance;
  var car2 = Car.instance;

  print(car1 ==
      car2); // Output: true, proving both references point to the same instance
  car1.drive(); // Output: Driving the car...
}
