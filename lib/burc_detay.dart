import 'package:burc_projesi/burcScreen.dart';
import 'package:burc_projesi/models/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  int burcIndex;

  Burc seciliburc;

  BurcDetay(this.burcIndex) {
    this.seciliburc = BurcScreen.tumBurclar[burcIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        primary: false,
        slivers: [
          SliverAppBar(
            // backgroundColor: Colors.green,
            expandedHeight: 250,
            primary: true,

            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                seciliburc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
              title: Text(seciliburc.burcAdi),
              centerTitle: true,
            ),
            pinned: true,
            floating: false,
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(seciliburc.burcDetayi,style: TextStyle(fontSize: 21),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
