import 'dart:convert';
import 'dart:io';

class ConsoleUtils {

  static String lerDados(){
    var dados = stdin.readLineSync(encoding: utf8) ?? "";
    return dados;
  }
  
  static double? lerDouble(){
    var value = double.parse(stdin.readLineSync()!);
    return value;
       
  }
}
