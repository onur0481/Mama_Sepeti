import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mama_sepeti/akis.dart';
import 'package:mama_sepeti/ara.dart';
import 'package:mama_sepeti/bildirimler.dart';
import 'package:mama_sepeti/profil.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int _aktifNo = 0;
  PageController sayfaKumandasi;

  @override
  void initState() {
    super.initState();
    sayfaKumandasi = PageController();
  }

  @override
  void dispose() {
    sayfaKumandasi.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (acilanSayfaNo) {
          setState(() {
            _aktifNo = acilanSayfaNo;
          });
        },
        controller: sayfaKumandasi,
        children: [
          Akis(),
          Arama(),
          Bildirimler(),
          Profil(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.green[900]),
        child: BottomNavigationBar(
          iconSize: 30.0,
          currentIndex: _aktifNo,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey[600],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Akış"),
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Keşfet"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Bildirimler"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ],
          onTap: (secilenSayfaNo) {
            setState(() {
              sayfaKumandasi.jumpToPage(secilenSayfaNo);
            });
          },
        ),
      ),
    );
  }
}
