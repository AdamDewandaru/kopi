import 'package:flutter/material.dart';
import 'package:kopi/profil/userprofil.dart';
import 'map.dart';
import 'menu_profil.dart';

class body_profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          userprofil(),
          menu_profil(
            text: "Riwayat saya",
            press: () => {},
          ),
          menu_profil(
            text: "Privasi dan Keamanan",
            press: () => {},
          ),
          menu_profil(
            text: "Favorite Saya",
            press: () => {},
          ),
          menu_profil(
            text: "Lokasi Anda",
            press: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext ctx) {
                return MapController();
              }))
            },
          ),
          menu_profil(
            text: "Tentang Kami",
            press: () => {},
          ),
          menu_profil(
            text: "Keluar",
            press: () => {},
          ),
        ],
      ),
    );
  }
}
