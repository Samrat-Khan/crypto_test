import 'package:crypto_proj/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SnackMessgae {
  static showWarningMsg(String msg) {
    return snackKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
