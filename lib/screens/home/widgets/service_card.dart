import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.title, required this.icon});
  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 8.0,
        right: 8.0 * 2,
        bottom: 8.0,
        left: 8.0,
      ),
      alignment: Alignment.centerLeft,
      constraints: BoxConstraints(minWidth: 80),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: .start,
        mainAxisAlignment: .center,
        children: [
          icon,
          const SizedBox(height: 5),
          Text(title, style: GoogleFonts.inter(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
