import 'dart:io';

class Livro {
  String titulo;
  String autor;
  int paginas;

  Livro(this.titulo, this.autor, this.paginas);

  String resumo() {
    return "Livro: $titulo, Autor: $autor, Páginas: $paginas";
  }
}

void main() {
  print("Digite o título do livro:");
  String titulo = stdin.readLineSync()!;

  print("Digite o autor do livro:");
  String autor = stdin.readLineSync()!;

  print("Digite o número de páginas do livro:");
  int paginas = int.parse(stdin.readLineSync()!);

  Livro livro = Livro(titulo, autor, paginas);
  print(livro.resumo());
}
