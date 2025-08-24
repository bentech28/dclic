import 'dart:io';

void main() {
  int totalScores = 0;
  int numScores = 3;

  for (int i = 1; i <= numScores; i++) {
    print("Entrez le score $i : ");
    // L'instruction suivante permet de lire une entrée
    // et la convertir en entier
    int score = int.parse(stdin.readLineSync()!);
    totalScores += score;
  }

  double moyenne = totalScores / numScores;

  if (moyenne >= 70) {
    print("Félicitations, votre moyenne est $moyenne. Vous avez réussi !");
  } else {
    print("Votre moyenne est $moyenne. Vous n'avez pas réussi.");
  }
}