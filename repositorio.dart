//arquivo para implementação de gravação de lista, interface de banco, leitura de txt..
//interface cria com classe abstrata e metodos abstratos
//diferença entre classe abstrata e interface é q interface tem apenas metodos e classe tem construtores de instancias e metodos

abstract class Repositorio {
  void cadastrar(var pessoa);

  void listar();
}
