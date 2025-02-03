import 'package:curso_2/curso_2.dart' as curso_2;

void main(List<String> arguments) {
  Fruta laranjas = Fruta('Laranja', 'Laranja', 60, 'Azedo');
  Melancia melancia1 = Melancia('Melancia', 'vermelha', 1200, 'Doce', isDoce: true, 56, true);

  print(laranjas.nome);
  print(melancia1.nome);
  print(melancia1.sabor);
  print(laranjas.sabor);

  laranjas.frutaDoce(laranjas.sabor);
  melancia1.frutaDoce(melancia1.sabor);
}

class Fruta {
  String nome;
  String cor;
  int peso;
  String sabor;
  bool? isDoce;

  Fruta(this.nome, this.cor, this.peso, this.sabor, {this.isDoce});

  frutaDoce(String sabor) {
    if (sabor == 'Doce') {
      isDoce = true;
      print(isDoce);
    } else {
      isDoce = false;
      print(isDoce);
    }
  }
}

class Melancia extends Fruta {
  int qtdSementes;
  bool isMadura;

  Melancia(String nome, String cor, int peso, String sabor, this.qtdSementes,
      this.isMadura,
      {bool? isDoce})
      : super(nome, cor, peso, sabor, isDoce: isDoce);
}
