import 'package:burc_projesi/burcScreen.dart';
import 'package:burc_projesi/models/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  int burcIndex;

  Burc seciliburc;

  BurcDetay(this.burcIndex) {
    this.seciliburc = BurcScreen.tumBurclar[burcIndex];
  }

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  PaletteGenerator paletteGenerator;
  Color dominantColor;

  void initState() {
    Future<PaletteGenerator> fPaletGenerator =
        PaletteGenerator.fromImageProvider(
            AssetImage(widget.seciliburc.burcBuyukResim));
    fPaletGenerator.then((value) {
      paletteGenerator = value;

      setState(() {
        dominantColor = paletteGenerator.vibrantColor.color;
      });
    });
    super.initState();
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
            backgroundColor:
                dominantColor == null ? Colors.deepOrange : dominantColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.seciliburc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
              title: Text(widget.seciliburc.burcAdi),
              centerTitle: true,
            ),
            pinned: true,
            floating: false,
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.seciliburc.burcDetayi,
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
