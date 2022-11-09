import 'dart:io';

void main(List<String> args) {
  var uruniki = new Product();
  var urun = new Product();

  urun.barcode = "458";
  urun.name = "elma";
  urun.price = "10";
  urun.color = "kirmizi";
  urun.stock = "500";
  //ara
  uruniki.barcode = "855";
  uruniki.name = "armut";
  uruniki.price = "17";
  uruniki.color = "sari";
  uruniki.stock = "350";

  List<String> listeurun = [
    urun.barcode,
    urun.name,
    urun.price,
    urun.color,
    urun.stock
  ];
  print("Barkod = " +
      listeurun[0] +
      " ,isim = " +
      listeurun[1] +
      "  ,Fiyat = " +
      listeurun[2] +
      "  ,Renk = " +
      listeurun[3] +
      "  ,Stok adeti = " +
      listeurun[4]);
  List listeuruniki = [
    uruniki.barcode,
    uruniki.name,
    uruniki.price,
    uruniki.color,
    uruniki.stock
  ];
  print("Barkod = " +
      listeuruniki[0] +
      " ,isim = " +
      listeuruniki[1] +
      "  ,Fiyat = " +
      listeuruniki[2] +
      "  ,Renk = " +
      listeuruniki[3] +
      "  ,Stok adeti = " +
      listeuruniki[4]);
  print("Secim Yapiniz = ");
  print(" 1- urun guncelleme = \n 2-urun silme =");
  String? guncellebarkod;
  String? barcodesil;
  String? secim = stdin.readLineSync();
  String? sec;
  String? yenibarkod;
  switch (secim) {
    case "1":
      print("Guncellemek istediğiniz urunun barkodunu girin = ");
      guncellebarkod = stdin.readLineSync();
      if (guncellebarkod == "855") {
        print(
            "Hangisini güncellemek istediginiz secin:\n1-Barkod\n2-Isim\n3-Fiyat\n4-Renk\n5-Stok");
        sec = stdin.readLineSync();
        if (sec == "1") {
          print("Yeni Barkodu Giriniz:");
          yenibarkod = stdin.readLineSync();
          uruniki.barcode = yenibarkod;
          print(uruniki.guncelle(uruniki.barcode));
          print("Yeni Barkod = " + uruniki.barcode);
        } else if (sec == "2") {
          print("Yeni İsmi Giriniz:");
          String? yeniisim = stdin.readLineSync();
          uruniki.name = yeniisim;
          print(uruniki.guncelle(uruniki.barcode));
          print("Yeni Isim = " + uruniki.name);
        } else if (sec == "3") {
          print("Yeni Fiyatı Giriniz:");
          String? yenifiyat = stdin.readLineSync();
          uruniki.price = yenifiyat;
          print(uruniki.guncelle(uruniki.barcode));
          print("Yeni Fiyat = " + uruniki.price);
        } else if (sec == "4") {
          print("Yeni Rengi Giriniz:");
          String? yenirenk = stdin.readLineSync();
          uruniki.color = yenirenk;
          print(uruniki.guncelle(uruniki.barcode));
          print("Yeni Renk = " + urun.color);
        } else if (sec == "5") {
          print("Yeni Stok Sayısını Giriniz:");
          String? yenistok = stdin.readLineSync();
          uruniki.stock = yenistok;
          print(uruniki.guncelle(uruniki.barcode));
          print("Yeni Stok Adedi = " + urun.stock);
        }
      } else if (guncellebarkod == "458") {
        print(
            "Hangisini güncellemek istediginiz secin:\n1-Barkod\n2-Isim\n3-Fiyat\n4-Renk\n5-Stok");
        sec = stdin.readLineSync();

        if (sec == "1") {
          print("Yeni Barkodu Giriniz:");
          String? yenibarkod = stdin.readLineSync();
          urun.barcode = yenibarkod;
          print(urun.guncelle(urun.barcode));
          print("Yeni Barkod = " + urun.barcode);
        } else if (sec == "2") {
          print("Yeni İsmi Giriniz:");
          String? yeniisim = stdin.readLineSync();
          urun.name = yeniisim;
          print(urun.guncelle(urun.barcode));
          print("Yeni Isim = " + urun.name);
        } else if (sec == "3") {
          print("Yeni Fiyatı Giriniz:");
          String? yenifiyat = stdin.readLineSync();
          urun.price = yenifiyat;
          print(urun.guncelle(urun.barcode));
          print("Yeni Fiyat = " + urun.price);
        } else if (sec == "4") {
          print("Yeni Rengi Giriniz:");
          String? yenirenk = stdin.readLineSync();
          urun.color = yenirenk;
          print(urun.guncelle(urun.barcode));
          print("Yeni Renk = " + urun.color);
        } else if (sec == "5") {
          print("Yeni Stok Sayısını Giriniz:");
          String? yenistok = stdin.readLineSync();
          urun.stock = yenistok;
          print(urun.guncelle(urun.barcode));
          print("Yeni Stok Adedi = " + urun.stock);
        }
      }

      break;
    case "2":
      print("Silmek Istediginiz Barkodu Girin = ");
      barcodesil = stdin.readLineSync();
      if (barcodesil == listeurun[0]) {
        listeurun[0] = "";
        listeurun[1] = "";
        listeurun[2] = "";
        listeurun[3] = "";
        listeurun[4] = "";
      } else if (barcodesil == listeuruniki[0]) {
        listeuruniki[0] = "";
        listeuruniki[1] = "";
        listeuruniki[2] = "";
        listeuruniki[3] = "";
        listeuruniki[4] = "";
      }
      print("Barkod = " +
          listeurun[0] +
          " ,isim = " +
          listeurun[1] +
          "  ,Fiyat = " +
          listeurun[2] +
          "  ,Renk = " +
          listeurun[3] +
          "  ,Stok adeti = " +
          listeurun[4]);
      //ara
      print("Barkod = " +
          listeuruniki[0] +
          " ,isim = " +
          listeuruniki[1] +
          "  ,Fiyat = " +
          listeuruniki[2] +
          "  ,Renk = " +
          listeuruniki[3] +
          "  ,Stok adeti = " +
          listeuruniki[4]);

      break;
    default:
      print("HATA");
      break;
  }
}

class Product {
  var barcode;
  var name;
  var price;
  var color;
  var stock;
  String guncelle(String barkod) {
    return "$barcode Barkodlu Urun Guncellenmistir.";
  }

  String sil(String barkod) {
    return "$barkod Barkodlu Urun Guncellenmistir.";
  }
}
