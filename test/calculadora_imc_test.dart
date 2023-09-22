
import 'package:calculadora_imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Nome', () {
    var pessoa = Pessoa(nome: "Anderson",altura:1.80,peso: 80);
    expect(pessoa.getNome(), "Anderson");

  });
  test('Altura', () {
    var pessoa = Pessoa(nome: "Anderson",altura:1.80,peso: 80);
    expect(pessoa.getAltura(), 1.8);
  });
  test('Peso', () {
    var pessoa = Pessoa(nome: "Anderson",altura:1.80,peso: 80);
    expect(pessoa.getPeso(), 80);
  });

  test('Calcular Obesidade', () {
    var pessoa = Pessoa(nome: "Anderson",altura:1.80,peso: 98);
    expect(pessoa.calcularIcm(pessoa.imc()), "Obesidade Grau I");
  });

  test('Calcular Magreza', () {
    var pessoa = Pessoa(nome: "Anderson",altura:1.80,peso: 50);
    expect(pessoa.calcularIcm(pessoa.imc()), "Magreza Grave");
  });


}
