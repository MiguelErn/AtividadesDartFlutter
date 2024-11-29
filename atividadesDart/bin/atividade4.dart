import 'dart:io';

void main() {
  print("Digite um número para gerar a tabuada:");
  num numero = num.parse(stdin.readLineSync()!);

  for (num i = 1; i <= 10; i++) {
    print("$numero X $i = ${numero * i}");
  }
}