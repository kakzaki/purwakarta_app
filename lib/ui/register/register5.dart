import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:purwakarta_app/constant/constant.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:purwakarta_app/widget/step_appbar.dart';
import 'package:purwakarta_app/ui/register/register6.dart';
import 'package:page_transition/page_transition.dart';

class Register5 extends StatelessWidget {
  const Register5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StepAppBar(index: 5, length: 6),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Verifikasi profilmu sekarang",
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                            color: MyColors.blackText,
                            fontSize: MyFontSize.large2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Text(
                      "Upload atau foto KTP sesuai dengan nama registrasi ya",
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                            color: MyColors.blackText,
                            fontSize: MyFontSize.medium1,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DottedBorder(
                    color: MyColors.shadow,
                    dashPattern: const [10, 6],
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(4),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Center(
                        child: Text(
                          "Foto",
                          style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                color: MyColors.shadow,
                                fontSize: MyFontSize.medium1,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "atau",
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                            color: MyColors.blackText,
                            fontSize: MyFontSize.medium1,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  DottedBorder(
                    color: MyColors.shadow,
                    dashPattern: const [10, 6],
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(4),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Center(
                        child: Text(
                          "Unggah Dokumen",
                          style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                color: MyColors.shadow,
                                fontSize: MyFontSize.medium1,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.7,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const Register6(),
                              type: PageTransitionType.leftToRight));
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: MyColors.mainColor),
                      child: Center(
                        child: Text(
                          "Lanjutkan",
                          style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                color: MyColors.white,
                                fontSize: MyFontSize.medium2,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
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
