import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tasarimvpn/renkler.dart';
import 'package:tasarimvpn/stack.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    final ekranBilgisi = MediaQuery.of(context);
    final double ekranYukseklik = ekranBilgisi.size.height;
    final double ekranGenislik = ekranBilgisi.size.width;
    print("ekran yüksekliği:${ekranYukseklik}");
    print("ekran yüksekliği:${ekranGenislik}");

    var deger = AppLocalizations.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BRZ ",
                  style: TextStyle(
                      color: Color(siyahRenk), fontSize: ekranYukseklik / 20),
                ),
                Text(
                  "VPN",
                  style: TextStyle(
                      color: Color(yesilRenk), fontSize: ekranYukseklik / 20),
                )
              ],
            ),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    deger!.ilkYazi,
                    style: TextStyle(
                        color: Color(yesilRenk), fontSize: ekranYukseklik / 22),
                  ),
                  SizedBox(
                      width: ekranGenislik / 3.25,
                      height: ekranYukseklik / 8,
                      child: Image.asset("resimler/vpn_resim.png")),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    width: ekranGenislik / 3,
                    height: ekranYukseklik / 8,
                    child: Image.asset("resimler/yan_resim.png"),
                  ),
                ),
                Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: deger.denemeIlkYazi,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(siyahRenk),
                              fontSize: ekranYukseklik / 38,
                            ),
                          ),
                          TextSpan(
                            text: deger.denemeOrtaYazi,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(yesilRenk),
                              fontSize: ekranYukseklik / 38,
                            ),
                          ),
                          TextSpan(
                            text: deger.denemeSonYazi,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(siyahRenk),
                              fontSize: ekranYukseklik / 38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      deger.denemeAltYazi,
                      style: TextStyle(
                          color: Color(yesilRenk),
                          fontSize: ekranYukseklik / 55),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Altyazi(ikon: Icons.add_card_outlined, yazi: deger.ikon1Yazi),
                Altyazi(
                    ikon: Icons.energy_savings_leaf_outlined,
                    yazi: deger.ikon2Yazi),
                Altyazi(ikon: Icons.bar_chart_outlined, yazi: deger.ikon3Yazi)
              ],
            ),
            Column(
              children: [
                Stackust(
                    ustYazi: deger.button1UstYazi,
                    altYazi: deger.button1AltYazi,
                    caprazYazi: deger.button1CaprazYazi),
                Stackust(
                    ustYazi: deger.button2UstYazi,
                    altYazi: deger.button2AltYazi,
                    caprazYazi: deger.button2CaprazYazi),
                Stackust(
                    ustYazi: deger.button3UstYazi,
                    altYazi: deger.button3AltYazi,
                    caprazYazi: deger.button3CaprazYazi)
              ],
            ),
            SizedBox(
              width: ekranGenislik,
              child: Container(
                color: Color(
                    yesilRenk), // Renk ekleyerek `BottomAppBar` görünümü verebiliriz
                child: Column(
                  children: [
                    Text(
                      deger.altYazi1,
                      style: TextStyle(
                        color: Color(beyazRenk),
                        fontSize: ekranYukseklik / 45,
                      ),
                    ),
                    Text(
                      deger.altYazi2,
                      style: TextStyle(
                          color: Color(beyazRenk),
                          fontSize: ekranYukseklik / 65),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          deger.altButton,
                          style: TextStyle(
                              color: Color(yesilRenk),
                              fontSize: ekranYukseklik / 64),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Color(beyazRenk))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Altyazi extends StatelessWidget {
  final IconData ikon;
  final String yazi;
  Altyazi({required this.ikon, required this.yazi});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ikon,
          color: Color(yesilRenk),
        ),
        Text(
          yazi,
          style: TextStyle(color: Color(siyahRenk)),
        )
      ],
    );
  }
}
