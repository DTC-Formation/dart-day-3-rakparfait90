class Finday {
  int taille = 5;
  turnOn() {
    activateDisplay();
  }
}

class Android extends Finday {
  @override
  turnOn() {
    // TODO: implement turnOn
    super.turnOn();
    checkWifi();
  }
  Afficher(){
    print(super.taille)
  }
}
