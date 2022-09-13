//conceitos de herança
import 'dart:html';
import 'abastecer_mixin.dart';
import 'pessoa.dart';

class Fornecedor extends Pessoa with Abastecer {
  String _empresa;

  Fornecedor(String nome, int idade, String sexo, String email, String empresa)
      : this._empresa = empresa,
        //usar : ao inves de {} para contrução de itens de herança
        super(nome, idade, sexo, email);
  //usar a palavra super e passar os dados da classe pai para instanciar o pai e não dar erro no filho

  Fornecedor.masculino(String nome, int idade, String email, String empresa)
      : this._empresa = empresa,
        super.masculino(nome, idade, email);

  Fornecedor.feminino(String nome, int idade, String email, String empresa)
      : this._empresa = empresa,
        super.feminino(nome, idade, email);

  @override //sobrescrita de metodo da classe pai
  void printData() {
    print(
        "Fornecedor: ${this.nome} | Idade: ${this.idade} | Sexo: ${this.sexo} | Email: ${this.email} | cargo: ${this._empresa}");
  }

  @override
  void desativar() {
    _empresa = "sem contrato";
    print("Funcionário desativado");
  }
}
