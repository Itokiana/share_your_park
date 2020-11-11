class Parking {
  int pId;
  String pNomvoie;
  double pLat;
  double pLng;
  String pTarif;
  double pSurface;
  int pStatus = 0;

  Parking(
      {this.pNomvoie,
      this.pLat,
      this.pLng,
      this.pStatus,
      this.pSurface,
      this.pTarif});
  Parking.withId(
      {this.pId,
      this.pNomvoie,
      this.pLat,
      this.pLng,
      this.pStatus,
      this.pSurface,
      this.pTarif});

  //getter
  int get id => pId;
  String get nomRue => pNomvoie;
  double get lat => pLat;
  double get lng => pLng;
  int get status => pStatus;
  String get tarif => pTarif;
  double get surface => pSurface;

  //setter
  setId(int newId) {
    this.pId = newId;
  }

  setNomVoie(String newNomvoie) {
    this.pNomvoie = newNomvoie;
  }

  setLat(double newLat) {
    this.pLat = newLat;
  }

  setLng(double newLng) {
    this.pLng = newLng;
  }

  setStatus(int newStatus) {
    this.pStatus = newStatus;
  }

  setSurface(double newSurface) {
    this.pSurface = newSurface;
  }

  setTarif(String newTarif) {
    this.pTarif = newTarif;
  }
}
