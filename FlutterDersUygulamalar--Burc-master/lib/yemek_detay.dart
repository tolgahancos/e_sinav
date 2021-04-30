import 'package:flutter/material.dart';
import 'yemek_listesi.dart';


class BurcDetay extends StatefulWidget {
  int BurcNO;
  BurcDetay(this.BurcNO);
  Color baskinRenk;



  @override
  _BurcDetayState createState() => _BurcDetayState();
}
class _BurcDetayState extends State<BurcDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            primary: true,
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(

              centerTitle: true,
              title: Text(BurclarListesi.tumyemekler[widget.BurcNO].Adi),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              BurclarListesi.tumyemekler[widget.BurcNO].Detayi,
              style: TextStyle(fontSize: 21),
            ),
          )
        ],
      ),
    );
  }
}
