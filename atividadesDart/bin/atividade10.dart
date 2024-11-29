import 'dart:io';

class Motor {
  String tipo;
  int potencia;

  Motor(this.tipo, this.potencia);
}

class Veiculo {
  String marca;
  String modelo;
  Motor motor;
  bool estaLigado = false; 

  Veiculo(this.marca, this.modelo, this.motor);

  void ligar() {
    if (!estaLigado) {
      estaLigado = true;
      print("O veículo $marca $modelo foi ligado!");
    } else {
      print("O veículo $marca $modelo já está ligado.");
    }
  }

  void desligar() {
    if (estaLigado) {
      estaLigado = false;
      print("O veículo $marca $modelo foi desligado!");
    } else {
      print("O veículo $marca $modelo já está desligado.");
    }
  }

  void exibirDetalhes() {
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Motor: ${motor.tipo} com ${motor.potencia} cavalos de potência");
    print("Estado: ${estaLigado ? 'Ligado' : 'Desligado'}");
  }
}

void main() {
  print("Digite a marca do veículo:");
  String marca = stdin.readLineSync()!;

  print("Digite o modelo do veículo:");
  String modelo = stdin.readLineSync()!;

  print("Digite o tipo do motor:");
  String tipoMotor = stdin.readLineSync()!;

  print("Digite a potência do motor:");
  int potenciaMotor = int.parse(stdin.readLineSync()!);

  Motor motor = Motor(tipoMotor, potenciaMotor);
  Veiculo veiculo = Veiculo(marca, modelo, motor);

  veiculo.exibirDetalhes();

  print("\nLigando o veículo...");
  veiculo.ligar();

  print("\nTentando ligar o veículo novamente...");
  veiculo.ligar();

  print("\nDesligando o veículo...");
  veiculo.desligar();

  print("\nEstado final do veículo:");
  veiculo.exibirDetalhes();
}
