import 'Adresse.dart';

class Personne {
  String? nom;
  String? prenom;
  int? age;
  String? sexe;
  int? pointDeVie;

  Adresse adresse;

  Personne(this.nom, this.prenom, this.age, this.sexe, this.pointDeVie,
      this.adresse) {}
  void saluer(Personne p) {
    if (this.sexe == "masculin" && p.sexe == "masculin") {
      print('K\'aiza ${p.nom}');
    } else if (this.sexe == "masculin" && p.sexe == "feminin") {
      print('Bonjour dry ry ${p.nom}');
    } else if (this.sexe == "feminin" && p.sexe == "masculin") {
      print('Bonjour elah ${p.nom}');
    } else {
      print("Bonjour ankia");
    }
  }

  Adresse demanderAdresse(Personne p) {
    return p.adresse;
  }
}
