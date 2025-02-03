import 'package:curso_2/curso_2.dart' as curso_2;

void main(List<String> arguments) {
  Fruta laranjas = Fruta('Laranja', 'Laranja', 60, 'Azedo');
  Melancia melancia1 = Melancia('Melancia', 'vermelha', 1200, 'Doce', isDoce: true, 56, true);

  print(laranjas.nome);
  print(melancia1.nome);

  melancia1.prepararMassa();
  melancia1.assarMassa();
  melancia1.servirBolo();

  laranjas.prepararMassa();
  laranjas.assarMassa();
  laranjas.servirBolo();
}

class Fruta implements Bolo {
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

  @override
  void prepararMassa(){
    print('Colha todas as $nome e lave bem\n junte com os ingredientes e misture bem. ');
  }

  @override
  void assarMassa(){
    print('Pegue a mistura e coloque no forno.');
  }

  @override
  void servirBolo(){
    print('Pronto! Seu bolo de $nome esta pronto, aproveite.');
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

abstract class Bolo {
  void prepararMassa(){

  }
  void assarMassa(){

  }
  void servirBolo(){

  }
}