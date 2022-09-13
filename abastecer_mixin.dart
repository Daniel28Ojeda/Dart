//mixin serve para criar metodos reutilizaveis mas sem depender de classes
//para usar na classe, basta usar With Abastecer na criação da classe q usará o metodo e no prog principal  usar cliente.abastecer()

mixin Abastecer {
  void abastecer() {
    print("Prateleira abastecida");
  }
}
