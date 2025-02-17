import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:purwakarta_app/constant/constant.dart';
import 'package:purwakarta_app/ui/peta/mark_peta.dart';
import 'package:page_transition/page_transition.dart';

class Pilih_peta extends StatefulWidget {
  const Pilih_peta({Key? key}) : super(key: key);

  @override
  State<Pilih_peta> createState() => _Pilih_petaState();
}

class _Pilih_petaState extends State<Pilih_peta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const Mark_peta(),
                        type: PageTransitionType.leftToRight));
              },
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.3,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    height: MediaQuery.of(context).size.height / 5.1,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Column(children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 30),
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColors.softGrey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Pilih titik lokasi",
                            style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  color: MyColors.blackText,
                                  fontSize: MyFontSize.large1,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Klik ‘pasang titik’ untuk melakukan seleksi wilayah yang ingin diajukan",
                            style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  color: MyColors.blackText,
                                  fontSize: MyFontSize.medium1,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
