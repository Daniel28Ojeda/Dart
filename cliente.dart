//arquivo de classes e metodos para consulta
import 'pessoa.dart';

class Cliente extends Pessoa {
  //extends para iondicar que extende de Pessoa, tem tudo q pessoa tem mais alguma coisa
  bool _ativo;
  Cliente(String nome, int idade, String sexo, String email, bool ativo)
      //reconstruindo a classe pessoa para não instanciar vazio
      : this._ativo = ativo,
        //usar : ao inves de {} para contrução de itens de herança
        super(nome, idade, sexo, email);
  //usar a palavra super e passar os dados da classe pai para instanciar o pai e não dar erro no filho

  Cliente.masculino(String nome, int idade, String email, bool ativo)
      : this._ativo = ativo,
        super.masculino(nome, idade, email);

  Cliente.feminino(String nome, int idade, String email, bool ativo)
      : this._ativo = ativo,
        super.feminino(nome, idade, email);

  @override //sobrescrita de metodo da classe pai
  void printData() {
    print(
        "Cliente: ${this.nome} | Idade: ${this.idade} | Sexo: ${this.sexo} | Email: ${this.email} | ativo: ${this._ativo}");
  }

  @override
  void desativar() {
    _ativo = false;
    print("Cliente desativado");
  }
}
