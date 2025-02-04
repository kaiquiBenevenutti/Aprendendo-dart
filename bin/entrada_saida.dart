import 'dart:io';

void main(List<String> arguments) {

  Pessoa pessoa = Pessoa();

  print('Me informe seu nome:');
  pessoa.nome = stdin.readLineSync() ?? '';
  print('Me informe sua idade:');
  pessoa.idade = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print('Me informe sua altura:');
  pessoa.altura = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  print('Me informe seu peso:');
  pessoa.peso = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  double imc = calculateIMC(pessoa);

  print('${pessoa.nome} seu IMC é $imc');
}

funcPergunta(){
  String resposta = '';

  while(resposta != 'com quem tu andas'){
    print('Diga-me com quem tu andas e te direi quem tu és.');
    resposta = stdin.readLineSync().toString();
  }
  print('quem tu és.');
}

double calculateIMC(Pessoa pessoa){
    final double IMC;
    IMC = pessoa.peso / (pessoa.altura * pessoa.altura);
    return IMC;
}

 class Pessoa{
  String nome = '';
  int idade = 0;
  double altura = 0.0;
  double peso = 0.0;

  Pessoa();
}