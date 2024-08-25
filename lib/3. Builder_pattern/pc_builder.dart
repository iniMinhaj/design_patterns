// Product The complex object that is being built:
class Computer {
  String? cpu;
  String? ram;
  String? storage;
  String? gpu;
}

// Builder: An abstract interface that defines all the steps required to build the product.
abstract class PcBuilder {
  setCPU();
  setRAM();
  setGPU();
  setStorage();
  Computer getComputer();
}

// Concrete Builder: A class that implements the Builder interface to construct and assemble parts of the product.

class GamingPCBuilder implements PcBuilder {
  final Computer _computer = Computer();
  @override
  Computer getComputer() {
    return _computer;
  }

  @override
  setCPU() {
    _computer.cpu = "Gaming CPU";
  }

  @override
  setGPU() {
    _computer.gpu = "GeeForce 4080Ti";
  }

  @override
  setRAM() {
    _computer.ram = "DDR5 64GB";
  }

  @override
  setStorage() {
    _computer.storage = "1 TB ssd";
  }
}

class WorkstationPCBuilder implements PcBuilder {
  final Computer _computer = Computer();
  @override
  Computer getComputer() {
    return _computer;
  }

  @override
  setCPU() {
    _computer.cpu = "Worksation CPU";
  }

  @override
  setGPU() {
    _computer.gpu = "Mid range GPU";
  }

  @override
  setRAM() {
    _computer.ram = "DDR5 32GB";
  }

  @override
  setStorage() {
    _computer.storage = "1 TB ssd";
  }
}

// Director
class Director {
  final PcBuilder builder;
  Director(this.builder);

  Computer build() {
    builder.setRAM();
    builder.setCPU();
    builder.setStorage();
    builder.setGPU();
    return builder.getComputer();
  }
}

// Client side:

void main() {
  PcBuilder gamingPCBuilder = GamingPCBuilder();
  Director director = Director(gamingPCBuilder);
  Computer gaming = director.build();
  print(gaming.cpu);
  print(gaming.gpu);
  print(gaming.ram);
  print(gaming.storage);

  print("\n");

  PcBuilder workStationBuilder = WorkstationPCBuilder();
  Director director1 = Director(workStationBuilder);
  Computer workstation = director1.build();

  print(workstation.cpu);
  print(workstation.gpu);
  print(workstation.ram);
  print(workstation.storage);
}
