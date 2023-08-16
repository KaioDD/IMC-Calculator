import 'package:project/project.dart' as project;
import 'dart:io';
  void main() {
    print("Qual seu nome?");
    String? nome = stdin.readLineSync();
    print("Qual sua idade?");
    String? idade = stdin.readLineSync();
    print("Qual a sua altura?");
    String? sAltura = stdin.readLineSync();

    if(sAltura != null){
      double altura = double.parse(sAltura);

      print("Qual seu peso?");
      String? sPeso = stdin.readLineSync();

      if( sPeso != null){
        double peso = double.parse(sPeso);
        double imc = peso / (altura * altura);
        print('\n'
            '----------------------------------\n'
            'Paciente: $nome com $idade anos.  \n'
            '----------------------------------\n'
            '| Seu IMC é: "$imc" |\n'
            '----------------------------------\n'
            '\n'
            'Aqui está uma tabela com os valores:\n'
            '---------------------------------------------------------------\n'
            '         IMC       |   CLASSIFICAÇÃO   |   OBESIDADE (GRAU)   |\n'
            '---------------------------------------------------------------\n'
            'MENOR QUE 18,5     |      MAGREZA      |          0           |\n'
            '---------------------------------------------------------------\n'
            'ENTRE 18,5 E 24,9  |       NORMAL      |          0           |\n'
            '---------------------------------------------------------------\n'
            'ENTRE 25,0 E 29,9  |     SOBREPESO     |          1           |\n'
            '---------------------------------------------------------------\n'
            'ENTRE 30,0 E 39,9  |     OBESIDADE     |          2           |\n'
            '---------------------------------------------------------------\n'
            'MAIOR QUE 40,0     |  OBESIDADE GRAVE  |          3           |\n'
            '---------------------------------------------------------------');
      }
    }
  }

