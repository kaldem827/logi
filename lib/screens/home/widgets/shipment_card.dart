
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShipmentTrackCard extends StatelessWidget {
  const ShipmentTrackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 2),
            color: Colors.grey.shade300,
            blurRadius: 1,
          ),
        ],
        gradient: LinearGradient(
          colors: [Color(0XFFE8FBCB), Color(0XFF4AB855).withValues(alpha: .40)],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    "Tracking number",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                  Text("#36123217", style: GoogleFonts.poppins()),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.black,
                ),
                child: Text(
                  "In transit",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(18.0),
            child: LinearProgressIndicator(
              value: .6,
              backgroundColor: Colors.white,
              color: Color(0XFF4AB855),
              borderRadius: BorderRadius.circular(20),
            ),
          ),

          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text("From", style: GoogleFonts.inter(fontSize: 12)),
                  Text(
                    "Maputo",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text("To", style: GoogleFonts.inter(fontSize: 12)),
                  Text(
                    "Sofala",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text("Arrival Date", style: GoogleFonts.inter(fontSize: 12)),
                  Text(
                    "08 Jan, 2026",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
