import 'dart:io';
import 'dart:math';

void main() {
  print("Digite o raio do círculo:");
  num raio = num.parse(stdin.readLineSync()!);
  num area = pi * pow(raio, 2);
  print("A área do círculo é: $area");
}
