import 'dart:io';

void main() {
  stdout.write('Entrez votre poids en kg : ');
  double poids = double.parse(stdin.readLineSync()!);

  stdout.write('Entrez votre taille en mètres : ');
  double taille = double.parse(stdin.readLineSync()!);

  double imc = poids / (taille * taille);

  print('Votre IMC est : ${imc.toStringAsFixed(2)}');

  if (imc < 18.5) {
    print('Vous êtes en insuffisance pondérale.');
  } else if (imc < 25) {
    print('Vous avez un poids normal.');
  } else if (imc < 30) {
    print('Vous êtes en surpoids.');
  } else {
    print('Vous êtes obèse.');
  }
}
