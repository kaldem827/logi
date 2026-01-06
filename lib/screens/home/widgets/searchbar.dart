import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(18),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SvgPicture.asset(
              "assets/icons/search.svg",
              width: 26,
              height: 26,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(2.0),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/scan.svg",
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),

              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                backgroundColor: Color(0XFF4AB855),
              ),
            ),
          ),
          prefixIconConstraints: BoxConstraints(maxWidth: 26, maxHeight: 26),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(18),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
          hintText: "Track your shipment",
          hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        cursorColor: Colors.grey,
      ),
    );
  }
}
