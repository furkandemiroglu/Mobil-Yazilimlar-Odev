import 'dart:ffi';

void main(List<String> args) {
  var x = new Canlilar();
  x.ad = "Karabas";
  var y = new Insan();
  print(x.ad);
  print(y.guncelle("faruk", "ironson", true, 850));
  print(y.kos());
  print(Insan.ortalama());
}

class Canlilar {
  String? ad;
  Int? yas;
  Bool? cinsiyet;

  String yuru(Canlilar c) {
    return "${this.ad} isimli canli yuruyor.";
  }
}

class Insan extends Canlilar {
  String soyad = "DEMIROGLU";
  bool gozlukluMu = false;
  int aylikGelir = 3150;
  static int vize = 85;
  static int finalnot = 55;
  String guncelle(String ad, String soyad, bool gozluk, int aylikGelir) {
    this.ad = ad;
    this.soyad = soyad;
    this.gozlukluMu = gozluk;
    this.aylikGelir = aylikGelir;
    return "$ad guncellendi";
  }

  String not(int viize, int fiinalnot) {
    vize = viize;
    finalnot = fiinalnot;

    return "$ad isimli canlinin notlari guncellendi. ";
  }

  String kos() {
    return "$ad,$soyad isimli canli kosuyor";
  }

  static double ortalama() {
    double sonuc = (Insan.vize * 0.3) + (Insan.finalnot * 0.7);
    print("Ortalama = ");
    return sonuc;
  }
}
