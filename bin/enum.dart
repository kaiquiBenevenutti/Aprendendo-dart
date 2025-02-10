void main(List<String> arguments){
  escolherMeioTransporte(Transportes.trem);
}

escolherMeioTransporte(Transportes locomocao){
  switch (locomocao) {
    case Transportes.carro:
      print("Vou de carro.");
      break;
    case Transportes.bike:
      print("Vou de bike.");
      break;
    default:
      print("Não sei como vou.");
      break;
  }
}

enum Transportes{
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins,
  trem
}