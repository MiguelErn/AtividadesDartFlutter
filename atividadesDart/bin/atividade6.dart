import 'dart:io';

void main() {
  print("Digite a base:");
  int base = int.parse(stdin.readLineSync()!);

  print("Digite o expoente:");
  int expoente = int.parse(stdin.readLineSync()!);

  int resultado = 1; 
  for (int i = 0; i < expoente; i++) {
    resultado *= base;
  }

  print("O resultado $base elevado a $expoente = $resultado");
}
