import 'dart:io';

class Carro {
  String marca;
  String modelo;
  int ano;

  Carro(this.marca, this.modelo, this.ano);

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

  print("Digite o ano do carro:");
  int ano = int.parse(stdin.readLineSync()!);

  Carro carro = Carro(marca, modelo, ano);
  carro.exibirDetalhes();
}
