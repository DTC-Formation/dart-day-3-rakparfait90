import 'dart:io';
import 'class/Adresse.dart';
import 'class/Personne.dart';

void main() {
  Adresse adr1 = Adresse("TBH", "Tanà", "Mada", 101);
  var pers1 =
      Personne("RAKOTOVOLOLONA", "Rojotiana", 22, "masculin", 200, adr1);

  Adresse adr2 = Adresse("IPK", "Tanà", "Mada", 101);
  var pers2 = Personne("Berta", "Giiwedinokwe", 33, "feminin", 500, adr2);

// Salutation
  // pers1.saluer(pers2);
  // pers2.saluer(pers1);

// Mini jeu
  print('Jeux d\'attaque');
  print('Choisissez votre personnage: ');
  print(" 1) ${pers1.nom} ${pers1.prenom} (point de vie: ${pers1.pointDeVie})");
  print(" 2) ${pers2.nom} ${pers2.prenom} (point de vie: ${pers2.pointDeVie})");

  bool continueGame = true;

  while (continueGame) {
    var line = stdin.readLineSync();

    switch (line) {
      case '1':
        pers1.attaquer(pers2);
        break;

      case '2':
        pers2.attaquer(pers1);
        break;
    }

    print('Voulez-vous continuer? (oui/non)');
    var continueChoice = stdin.readLineSync()?.toLowerCase();

    if (continueChoice != 'oui') {
      continueGame = false;

      if (pers1.pointDeVie == pers2.pointDeVie) {
        print('Egalité');
      } else if (pers1.pointDeVie > pers2.pointDeVie) {
        print('Player 1 a gagné!');
        print('Player 2 a perdu!');
      } else {
        print('Player 2 a gagné!');
        print('Player 1 a perdu!');
      }
    } else {
      print('Choix du joueur?');
      print(
          "1) ${pers1.nom} ${pers1.prenom} (point de vie restant: ${pers1.pointDeVie})");
      print(
          "2) ${pers2.nom} ${pers2.prenom} (point de vie restant: ${pers2.pointDeVie})");
    }
  }
}
