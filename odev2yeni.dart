import 'dart:ffi';

class Canlilar {
  String? ad;
  Int? yas;
  Bool? cinsiyet;

  String yuru() {
    return "${this.ad} isimli canli yuruyor.";
  }
}

class Insan extends Canlilar {
  String soyad = "DEMIROGLU";
  bool gozlukluMu = false;
  int aylikGelir = 3150;
  static double? vize;
  static double? finalnot;
  //static double? ortalama;
  double? sonuc;

  String guncelle(String Ad, String Soyad, bool Gozluk, int AylikGelir) {
    this.ad = Ad;
    this.soyad = Soyad;
    this.gozlukluMu = Gozluk;
    this.aylikGelir = AylikGelir;
    return "$ad guncellendi";
  }

  Insan.Not({vize = 85, finalnot = 55}) {
    sonuc = (vize * 0.3) + (finalnot * 0.7);
  }

  String kos() {
    return "$ad,$soyad isimli canli kosuyor";
  }

  double? ortalama() {

    return sonuc ;
  }
}

void main(List<String> args) {
  var x = new Canlilar();
  x.ad = "Karabas";
  var y = new Insan.Not();
  print(x.ad);
  print(y.guncelle("faruk", "ironson", true, 3175));
  print(y.kos());
  print(y.ortalama());
}
