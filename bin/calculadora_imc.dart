import 'dart:io';

import 'package:calculadora_imc/console_utils.dart';
import 'package:calculadora_imc/pessoa.dart';

void main(List<String> arguments) {
  print('Calculadora IMC');
  String result = "";
  try {
    print('Infomerme seu Nome:');
    String nome = ConsoleUtils.lerDados();
    print('Infomerme sua Altura em metros:');
    double altura = double.parse(stdin.readLineSync()!);
    print('Infomerme seu Peso em quilo:');
    double peso = ConsoleUtils.lerDouble()!;
    var pessoa = Pessoa(nome: nome, altura: altura, peso: peso);
    result = pessoa.calcularIcm(pessoa.imc());
    print(result);
  } catch (e) {
    print("Erro, dados inválidos message: $e");
  }
}
