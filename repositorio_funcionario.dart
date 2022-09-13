import 'repositorio.dart';
import 'funcionario.dart';

class RepositorioFuncionario implements Repositorio {
  //implements significa q usará a interface criada
  var listaFuncionarios = [];

  @override
  void cadastrar(pessoa) {
    listaFuncionarios.add(pessoa);
  }

  @override
  void listar() {
    for (var funcionario in listaFuncionarios) {
      funcionario.printData();
    }
  }
}
