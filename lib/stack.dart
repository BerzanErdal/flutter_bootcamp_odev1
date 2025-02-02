import 'package:flutter/material.dart';
import 'package:tasarimvpn/renkler.dart';

class Stackust extends StatelessWidget {
  final String ustYazi;
  final String altYazi;
  final String caprazYazi;

  Stackust(
      {required this.ustYazi, required this.altYazi, required this.caprazYazi});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.75),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Buton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(yesilRenk),
              minimumSize: Size(190, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 34),
            ),
            onPressed: () {
              print("Tıklandı");
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2),
                Text(
                  ustYazi,
                  style: TextStyle(color: Color(beyazRenk), fontSize: 27),
                ),
                Text(
                  altYazi,
                  style: TextStyle(color: Color(beyazRenk), fontSize: 16),
                ),
                SizedBox(height: 2),
              ],
            ),
          ), // Sağ Üstteki Yuvarlak Etiket
          Positioned(
            top: -27,
            right: -24,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(yesilRenk),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Text(
                caprazYazi,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(beyazRenk),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
