import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  Map<String, String> burcBilgileri = {
    "Koç": "21 Mart - 19 Nisan",
    "Boğa": "20 Nisan - 20 Mayıs",
    "İkizler": "21 Mayıs - 21 Haziran",
    "Yengeç": "22 Haziran - 22 Temmuz",
    "Aslan": "23 Temmuz - 22 Ağustos",
    "Başak": "23 Ağustos - 22 Eylül",
    "Terazi": "23 Eylül - 22 Ekim",
    "Akrep": "23 Ekim - 21 Kasım",
    "Yay": "22 Kasım - 21 Aralık",
    "Oğlak": "22 Aralık - 19 Ocak",
    "Kova": "20 Ocak - 18 Şubat",
    "Balık": "19 Şubat - 20 Mart"
  };
  List<String> imagesList = [
    "koc",
    "boga",
    "ikizler",
    "yengec",
    "aslan",
    "basak",
    "terazi",
    "akrep",
    "yay",
    "oglak",
    "kova",
    "balik"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.builder(
          itemCount: burcBilgileri.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i.elle.com.tr/elle-test-images/elle_${imagesList[index]}.jpg"),
                ),
                title: Text(
                  burcBilgileri.keys.elementAt(index),
                  style: TextStyle(color: Colors.pink, fontSize: 21),
                ),
                subtitle: Text(
                  burcBilgileri.values.elementAt(index),
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }
}
