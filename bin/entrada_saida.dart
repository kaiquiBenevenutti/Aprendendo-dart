import 'dart:io';

void main(List<String> arguments) {
  String resposta = '';

  while(resposta != 'com quem tu andas'){
    print('Diga-me com quem tu andas e te direi quem tu és.');
    resposta = stdin.readLineSync().toString();
  }
  print('quem tu és.');
}
