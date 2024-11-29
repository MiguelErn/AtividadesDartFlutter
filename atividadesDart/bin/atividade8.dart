import 'dart:io';

class Carro {
  String marca;
  String modelo;
  int ano;

  // Construtor principal
  Carro(this.marca, this.modelo, this.ano);

  // Construtor nomeado para carros usados
  Carro.usado(this.marca, this.modelo) : ano = DateTime.now().year - 5;

  void exibirDetalhes() {
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Ano: $ano");
  }
}

void main() {
  print("Digite a marca do carro:");
  String marca = stdin.readLineSync()!;

  print("Digite o modelo do carro:");
  String modelo = stdin.readLineSync()!;

  print("O carro é novo ou usado? (novo/usado)");
  String tipo = stdin.readLineSync()!;

  Carro carro;

  if (tipo.toLowerCase() == "usado") {
    carro = Carro.usado(marca, modelo);
  } else {
    print("Digite o ano do carro:");
    int ano = int.parse(stdin.readLineSync()!);
    carro = Carro(marca, modelo, ano);
  }

  carro.exibirDetalhes();
}
