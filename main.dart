//arquivo para consultas basicas
import 'dart:io';

main() {
  //variaveis------------------------------------------------------------------------------------------
  var mensagem =
      "Meu primeiro script com Dart"; //variavel sem especificar tipo usar var
  int numero = 10; //especifica o tipo da variavel
  double peso = 75.3;
  String mensagem2 = "Ola mundo";
  bool vivo = true; //nenhuma variavel pode mudar o seu tipo depois de declarada

  dynamic variavel =
      15; //unica forma de declarar variavel que pode mudar o seu tipo em tempo de execução
  variavel = "Mudei para String";
  const naoMuda = "Constante não se muda"; //declaração de constante
  print(mensagem);
  print(peso);
  print(mensagem2);
  print(numero);
  print(vivo);
  print(variavel);
  print(naoMuda);

  //------------------------------------------------------------------------------------------------------
  //Lendo input de usuário

  //importar biblioteca dart:io
  print("Digite seu nome: ");
  var nome = stdin
      .readLineSync(); //stdin usa a biblioteca  -  readlinesync é a ação de ler os dados - le apenas string

  print("Digite sua idade: ");
  dynamic idade = stdin.readLineSync(); //apenas desse modo ele le inteiros
  int idadeReal = int.parse(idade); //converte de string para int
  //aulas mostram "int idade = int.parse(stdin.readLineSync()); mas aqui deu erro...

  print("Ola $nome !");
  print("Legal, $idadeReal anos...");

  //------------------------------------------------------------------------------------------------------
  //manipulação de strings

  String hello = "Hello World";
  print(
      "Ola ${hello.toUpperCase()} !"); //usar entre {} para poder usar os metodos
  print(hello.split(' ')); //quebra a string em array

  hello.contains("H", 0); //verificar se existe H na posição 0
  hello.contains("H"); //verificar se existe H

  /*   toLowerCase(): Converte a string para letras minúsculas;
  toUpperCase(): Converte a string para letras maiúsculas;
  trim(): Remove os espaços em branco de uma string;
  compareTo(): Compara uma string a outra;
  replaceAll(): Substitui todas as ocorrências de determinado padrão de uma string;
  split(): Divide a string de acordo com um determinado delimitador;
  substring(): Retorna parte de uma string com o tamanho especificado pelo método;
  toString(): Retorna a representação do objeto como string;
  codeUnitAt(): Retorna a string no formato 16-bit UTF-16. */

  //------------------------------------------------------------------------------------------------------
  //operadores logicos

/*  
 Operador  Operação        Exemplo (A = 1, B = 2)
  <         Menor           A < B, retorna True
  >         Maior           A > B, retorna False
  <=        Menor ou igual  A <=B, retorna True
  >=        Maior ou igual  A >=B, retorna False
  ==        Igual           A == B, retorna False
  !=        Diferente       A != B, retorna True
 */
  var c = 10;
  var b = 20;
  c < b; // returna true

  /* 
    Operação               Operador   Resultado
    Adição                    +     Soma de dois ou mais valores
    Subtração                 -     Subtrai dois ou mais valores
    Multiplicação             *     Multiplica dois ou mais valores
    Divisão                   /     Divisão que retorna o valor sem arredondamento. Por exemplo, ao dividir 4/3, será retornado o valor 1,33333333
    Parte inteira da divisão  ~/    Divisão que retorna o valor arredondado. Por exemplo, ao dividir 4~/3, será retornado o valor 1
    Módulo                    %     Retorna o resto da divisão entre dois valores
    Incremento                ++    Incrementa 1 em uma variável inteira
    Descremento               --    Subtrai 1 em uma variável inteira */

  var a = 10;
  a++; //Incremento
  a * 5; //Multiplicação

  //------------------------------------------------------------------------------------------------------
  //estruturas condicionais

  if (idadeReal >= 18) {
    print("Você já pode ser preso");
  } else {
    print("Você ainda é menor de idade");
  }

  bool morto = true;

  switch (morto) {
    case false:
      print("Você está vivo");
      break;

    case true:
      print("Você está morto");
      break;

    default:
      print("Como conseguiu isso?");
  }

  //ternario
  print("Você é ${int.parse(idade) < 18 ? "menor" : "maior"} de idade");

  //------------------------------------------------------------------------------------------------------
  //estruturas de repetição

  /* while (morto == true) {
    print("Ainda está morto");
    morto == false;
  } */

  /* do {
    print("Ainda está vivo");
  } while (vivo == true); */

  vivo = false;

  for (var i = 0; i <= 5; i++) {
    print(i);
  }

  //break interrompe a execução e finaliza os loop
  //continue pula apenas uma execução, passando para o proximo loop

  //------------------------------------------------------------------------------------------------------
  //listas ou array

  var lista = new List.generate(10, (i) => i + 1);

  print("lista = $lista");
  for (var i = 0; i < lista.length; i++) {
    print("${lista[i]}");
  }

  var num = [11, 22, 33, 44, 55, 66, 77, 88, 99];
  for (var j in num) {
    print(j);
  }

  num.add(100);
  print("O tamanho do array é ${num.length}");
  num.remove(44); //parametro o item a ser removido
  num.removeAt(1); //parametro é a posição do item na posição 1
  num.removeLast(); //remove o ultimo item
  num.removeRange(0, 2); //remove no ramge 0 até 2

  //mapa
  var mapa = Map();
  mapa["nome"] = nome;
  mapa["idade"] = idade;

  print(mapa);
  print(mapa["nome"]);

  //------------------------------------------------------------------------------------------------------
  //tratamento de exceções / erros

  print("Digite um numero inteiro: ");
  int idadeNovo;

  try {
    idadeNovo = int.parse(stdin.readLineSync()!);
    print("$idadeNovo ok!");
  } on FormatException {
    //erro de formato
    print("Número inválido!");
    idadeNovo = 0;
  } on Exception {
    //qualquer tipo de erro não tratado anteriormente
    print("Erro desconhecido!");
  } finally {
    //precisa executar independente se deu erro ou não
    //fechamento de conexão ou arquivo txt por exemplo
  }

  //------------------------------------------------------------------------------------------------------
  //Função anonima

  var quadrado = (x) => x * x;
  print(quadrado(5));

  //------------------------------------------------------------------------------------------------------
  //Fontes

/*   Como adicionar e configurar fontes no projeto flutter
A configuração de fontes externas no Flutter possui dois passos, basicamente. Primeiro, precisamos criar o diretório e armazenar os arquivos de fontes nesta pasta. Depois, é necessário configurar este diretório no arquivo pubspec.yaml do projeto, como veremos nos tópicos abaixo. */

/* Onde armazenando fontes personalizadas no projeto Flutter
O primeiro passo para utilizar fontes em um app Flutter é inserí-las no projeto. Para isso, na raiz do diretório do app, precisamos criar uma pasta chamada assets. É ela quem vai armazenar os arquivos estáticos do nosso projeto, sejam fontes, imagens, áudios, etc.
Lembre-se que esta pasta deve estar na raiz do projeto :)
Depois disso, criamos um outro diretório (agora, dentro da pasta assets) chamado fonts. É ele quem vai armazenar as fontes do nosso projeto. Para este exemplo, vamos utilizar a fonte Montserrat, que pode ser baixada no site do Google Fonts.

No site, há diversas variações da fonte, mas utilizaremos apenas as versões Montserrat-Light, Montserrat-Regular, Montserrat-Medium e Montserrat-Bold. Para isso, copiamos os respectivos arquivos de fontes que baixamos e colamos no diretório fonts do projeto:
Com isso, as fontes já estão no projeto. O próximo passo, então, é configurá-las no app.

Configurando fontes externas no projeto Flutter
Com as fontes presentes no projeto, agora precisamos configurá-las. Para isso, no arquivo pubspec.yaml, adicionamos a pasta assets/fonts para que o projeto reconheça o diretório que está armazenando os arquivos estáticos:

flutter:

    # The following line ensures that the Material Icons font is
    # included with your application, so that you can use the icons in
    # the material Icons class.
    uses-material-design: true

    assets:
    - assets/images/
    - assets/fonts/

Depois disso, é só especificar as fontes que serão utilizadas (também no arquivo pubspec.yaml). É nessa configuração que definimos a largura de cada tipo de fonte:
fonts:
    - family: Montserrat
        fonts:
        - asset: assets/fonts/Montserrat-Light.ttf
            weight: 300
        - asset: assets/fonts/Montserrat-Regular.ttf
            weight: 400
        - asset: assets/fonts/Montserrat-Medium.ttf
            weight: 500
        - asset: assets/fonts/Montserrat-Bold.ttf
            weight: 700

Agora, ao final dessa configuração, é só atualizar o pubspec.yaml para que o projeto reconheça as fontes:

Execute o comando flutter pub get, caso você esteja utilizando o terminal;
Se estiver utilizando o Android Studio, clique no botão Packages get;
Caso esteja utilizando o VS Code, clique no botão Get Packages.
Ao final deste processo, a fonte já está pronta para ser utilizada no aplicativo, conforme o código de exemplo abaixo:
Text(
    "Teste",
    style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 24,
        fontWeight: FontWeight.bold
    ),
) */


}
