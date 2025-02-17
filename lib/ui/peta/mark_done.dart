import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:purwakarta_app/constant/constant.dart';
import 'package:page_transition/page_transition.dart';
import 'package:purwakarta_app/ui/permohonan/permohonan2.dart';

class Mark_done extends StatefulWidget {
  const Mark_done({Key? key}) : super(key: key);

  @override
  State<Mark_done> createState() => _Mark_doneState();
}

class _Mark_doneState extends State<Mark_done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.29,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  height: MediaQuery.of(context).size.height / 1.9,
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
                          "Tentukan wilayah",
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
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 70,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: MyColors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Total distance",
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    color: MyColors.grey,
                                    fontSize: MyFontSize.small3,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "967.14 m (3,173.02 ft)",
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    color: MyColors.blackText,
                                    fontSize: MyFontSize.medium2,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      height: 70,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: MyColors.softGrey,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: MyColors.softGrey),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Total Area",
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    color: MyColors.blackText,
                                    fontSize: MyFontSize.small3,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "2.92 km² (1.13 mi²)",
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                    color: MyColors.blackText,
                                    fontSize: MyFontSize.medium2,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const Permohonan2(),
                                type: PageTransitionType.leftToRight));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 30),
                        height: 60,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: MyColors.mainColor),
                        child: Center(
                          child: Text(
                            "Simpan",
                            style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  color: MyColors.white,
                                  fontSize: MyFontSize.medium2,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
