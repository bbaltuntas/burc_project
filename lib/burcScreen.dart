import 'package:burc_projesi/burc_detay.dart';
import 'package:burc_projesi/utils/infos.dart';
import 'package:flutter/material.dart';

import 'models/burc.dart';

class BurcScreen extends StatelessWidget {
  static List<Burc> tumBurclar = verileriAl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.builder(
          itemCount: Infos.BURC_BILGILERI.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BurcDetay(index)));
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.cyan,
                  ),
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(tumBurclar[index].burcKucukResim),
                  ),
                  title: Text(
                    tumBurclar[index].burcAdi,
                    style: TextStyle(color: Colors.pink, fontSize: 21),
                  ),
                  subtitle: Text(
                    tumBurclar[index].burcTarihi,
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          }),
    );
  }

  static List<Burc> verileriAl() {
    List<Burc> burclar = [];
    for (int i = 0; i < 12; i++) {
      burclar.add(new Burc(
          Infos.BURC_BILGILERI.keys.elementAt(i),
          Infos.BURC_BILGILERI.values.elementAt(i),
          Infos.BURC_GENEL_OZELLIKLERI[i],
          "https://i.elle.com.tr/elle-test-images/elle_${Infos.BURC_IMAGES_LINKS[i]}.jpg",
          "images/${Infos.BURC_IMAGES_LINKS[i]}_buyuk${i + 1}.png"));
    }
    return burclar;
  }
}
