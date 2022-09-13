//conceitos de herança
import 'dart:html';
import 'abastecer_mixin.dart';
import 'pessoa.dart';

class Funcionario extends Pessoa with Abastecer {
  String _cargo;

  Funcionario(String nome, int idade, String sexo, String email, String cargo)
      : this._cargo = cargo,
        //usar : ao inves de {} para contrução de itens de herança
        super(nome, idade, sexo, email);
  //usar a palavra super e passar os dados da classe pai para instanciar o pai e não dar erro no filho

  Funcionario.masculino(String nome, int idade, String email, String cargo)
      : this._cargo = cargo,
        super.masculino(nome, idade, email);

  Funcionario.feminino(String nome, int idade, String email, String cargo)
      : this._cargo = cargo,
        super.feminino(nome, idade, email);

  @override //sobrescrita de metodo da classe pai
  void printData() {
    print(
        "Funcionário: ${this.nome} | Idade: ${this.idade} | Sexo: ${this.sexo} | Email: ${this.email} | cargo: ${this._cargo}");
  }

  @override
  void desativar() {
    _cargo = "demitido";
    print("Funcionário desativado");
  }
}
