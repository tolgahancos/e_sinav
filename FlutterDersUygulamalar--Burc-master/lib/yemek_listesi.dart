import 'package:yemekler/yemek.dart';
import 'package:yemekler/utils/strings.dart';
import 'package:flutter/material.dart';

class BurclarListesi extends StatelessWidget {
  static List<Yemek> tumyemekler;

  @override
  Widget build(BuildContext context) {
    tumyemekler = verileriAl();
    return Scaffold(
      appBar: AppBar(
        title: Text("Yaren Yemek Evi"),
      ),
      body: listeYaratici(),
    );
  }

  List<Yemek> verileriAl() {
    List<Yemek> gecici = [];

    for (int m = 0; m < 12; m++) {


      gecici.add(Yemek(
          Strings.YEMEK_ADLARI[m],
          Strings.YEMEK_TARIFLERI[m],
          Strings.YEMEK_ICERIKLERI[m],
          ));
    }
    return gecici;
  }

  Widget listeYaratici() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return satirDuzeni(context, index);
      },
      itemCount: tumyemekler.length,
    );
  }

  Widget satirDuzeni(BuildContext context, indeks) {
   Yemek  oAnkiElelman = tumyemekler[indeks];
    return Card(
      elevation: 2,
      child: ListTile(
        onTap: ()=> Navigator.pushNamed(context, "/detayBurc/$indeks"),
        title: Text(oAnkiElelman.Adi),
        subtitle: Text(oAnkiElelman.Tarihi),

        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
