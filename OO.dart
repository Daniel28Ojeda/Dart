//arquivo para consiulta de orientação a objetos
import 'dart:io';
import 'pessoa.dart';
import 'cliente.dart';
import 'repositorio_cliente.dart';
import 'repositorio_funcionario.dart';

main() {
  var opcao;
  RepositorioCliente repositorio_cliente = new RepositorioCliente();
  RepositorioFuncionario repositorio_funcionario = new RepositorioFuncionario();

  do {
    print("Menu: ");
    print("1 - Cadatrar cliente: ");
    print("2 - Cadatrar cliente masculino: ");
    print("3 - Cadatrar cliente feminino: ");
    print("4 - Listar Clientes: ");
    print("0 - Sair");
    opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        /*  var cliente = new Pessoa();
        print("Digite o nome: ");
        cliente.nome = stdin.readLineSync()!;

        print("Digite a idade: ");
        cliente.idade = int.parse(stdin.readLineSync()!);

        print("Digite o sexo: ");
        cliente.sexo = stdin.readLineSync()!;

        print("Digite o email: ");
        cliente.email = stdin.readLineSync()!;

        print("Nome: ${cliente.nome}"); */

        /*cliente
          ..nome = "Daniel"
          ..idade = 29
          ..email = "daniel@mail.com"
          ..sexo = "M"; */
        //cascade - outra forma de acessar valores de classes

        print("Digite nome: ");
        String nome = stdin.readLineSync()!;

        print("Digite idade: ");
        int idade = int.parse(stdin.readLineSync()!);

        print("Digite o sexo: ");
        String sexo = stdin.readLineSync()!;

        print("Digite o email: ");
        String email = stdin.readLineSync()!;

        var cliente = new Cliente(nome, idade, sexo, email, true);
        repositorio_cliente.cadastrar(cliente);
        //cliente.printData();

        break;
      case 2:
        print("Digite nome: ");
        String nome = stdin.readLineSync()!;

        print("Digite o sobrenome: ");
        String sobrenome = stdin.readLineSync()!;

        print("Digite idade: ");
        int idade = int.parse(stdin.readLineSync()!);

        print("Digite o email: ");
        String email = stdin.readLineSync()!;

        var cliente = new Cliente.masculino(nome, idade, email, true);
        cliente.adicionarSobrenome(sobrenome);
        cliente.fazerAniversario();
        repositorio_cliente.cadastrar(cliente);
        //cliente.printData();

        break;
      case 3:
        print("Digite nome: ");
        String nome = stdin.readLineSync()!;

        print("Digite idade: ");
        int idade = int.parse(stdin.readLineSync()!);

        print("Digite o email: ");
        String email = stdin.readLineSync()!;

        var cliente = new Cliente.feminino(nome, idade, email, true);
        //cliente.printData();
        repositorio_cliente.cadastrar(cliente);
        //print(cliente.nome);

        break;
      case 4:
        repositorio_cliente.listar();

        break;

      default:
    }
  } while (opcao != 0);
}
