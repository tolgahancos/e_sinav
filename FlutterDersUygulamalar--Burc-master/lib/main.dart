import 'package:flutter/material.dart';
import 'yemek_detay.dart';
import 'yemek_listesi.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yaren yemek Evi",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      initialRoute: "/",
      routes: {"/": (context) => BurclarListesi()},
      onGenerateRoute: (RouteSettings settings) {
        List<String> yollar = settings.name
            .split("/"); // detayBurc/$indeks şeklinde gelen veriyi ayrıştır

        if (yollar[1] == "detayBurc") {
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(yollar[2])));
        }
       return null ;
      },
    );
  }
}
