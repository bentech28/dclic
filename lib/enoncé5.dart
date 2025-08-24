import 'dart:io';

void main() {
  print("Bienvenue dans l’application de calcul d'IMC !");
  print("introduire votre poids en kilogrammes(kg)");
  String poidsInput = stdin.readLineSync()!;
  double poids = double.tryParse(poidsInput)!;

  print("introduire votre taille en mètres(m)");
  String tailleInput = stdin.readLineSync()!;
  double taille = double.tryParse(tailleInput)!;

  double IMC = poids / (taille * taille);
  switch (IMC) {
    case < 18.5:
      print('sous-poids');
      break;
    case >= 18.5 && < 25:
      print('poids normal');
      break;
    case >= 25 && < 30:
      print('sur-poids');
      break;
    case >= 30:
      print('obésité');
  }
}
