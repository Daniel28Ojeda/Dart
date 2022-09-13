//consulta sobre classes, depende do oo.dart
import 'dart:io';

abstract class Pessoa {
  //atributo publico sem underline "nome", atributo privado com underline "_nome"
  //classe abstrata não pode ser instanciada, serve apenas para servir de base para as demais classes
  String _nome = "";
  int _idade = 0;
  String _sexo = "";
  String _email = "";

  Pessoa(String nome, int idade, String sexo, String email) {
    this._nome = nome;
    this._idade = idade;
    this._sexo = sexo;
    this._email = email;
  }

  Pessoa.masculino(String nome, int idade, String email) {
    this._nome = nome;
    this._idade = idade;
    this._sexo = "M";
    this._email = email;
  }

  Pessoa.feminino(String nome, int idade, String email) {
    this._nome = nome;
    this._idade = idade;
    this._sexo = "F";
    this._email = email;
  }

//metodos
  void printData() {
    print("Cadastro realizado com suceso!");
    print(
        "Nome da pessoa: ${this._nome} | Idade: ${this._idade} | Sexo: ${this._sexo} | Email: ${this._email}");
  }

  int fazerAniversario() {
    this._idade++;
    return this._idade;
  }

  void adicionarSobrenome(String sobrenome) {
    this._nome = this._nome + " " + sobrenome;
  }

  void desativar();
  //metodo abstrato, não tem corpo mas cria obrigatoriedade de reescrever nas classes filhos. Apenas dar nome e não criar o corpo

  get nome {
    return _nome;
  }

  get idade {
    return _idade;
  }

  get sexo {
    return _sexo;
  }

  get email {
    return _email;
  }

  set nome(nome) {
    return _nome = nome;
  }

  set idade(idade) {
    return _idade = idade;
  }

  set sexo(sexo) {
    return _sexo = sexo;
  }

  set email(email) {
    return _email = email;
  }
}
