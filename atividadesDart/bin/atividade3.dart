import 'dart:io';

void main() {
  print("Digite o salário atual:");
  num salario = num.parse(stdin.readLineSync()!);
  num percentual;
  
  if (salario <= 280.0) {
    percentual = 20;
  } else if (salario <= 700.0) {
    percentual = 15;
  } else if (salario <= 1500.0) {
    percentual = 10;
  } else {
    percentual = 5;
  }

  num aumento = salario * (percentual / 100);
  num novoSalario = salario + aumento;

  print("Salário antes do reajuste: R\$ $salario");
  print("Percentual de aumento aplicado: $percentual%");
  print("Valor do aumento: R\$ $aumento");
  print("Novo salário: R\$ $novoSalario");
}
