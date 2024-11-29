import 'dart:io';

void main() {
  print("Digite os números separados por vírgula:");
  String entrada = stdin.readLineSync()!;

  List<double> numeros = entrada.split(',').map((e) => double.parse(e.trim())).toList();

  double soma = numeros.reduce((a, b) => a + b);
  double media = soma / numeros.length;

  print("A média dos números é: ${media.toStringAsFixed(2)}");
}
