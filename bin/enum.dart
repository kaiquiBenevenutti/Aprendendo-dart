void main(List<String> arguments){
  escolherMeioTransporte(Transportes.trem);
}

escolherMeioTransporte(Transportes locomocao){
  if(locomocao == Transportes.carro){
    print("Vou de carro.");
  }else if(locomocao == Transportes.bike){
    print("Vou de bike.");
  }else {
    print("Nao sei como vou.");
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