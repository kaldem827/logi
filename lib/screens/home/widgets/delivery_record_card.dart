import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logi/core/constants.dart';
import 'package:logi/core/utils.dart';

class DeliveryHistoryCard extends StatelessWidget {
  const DeliveryHistoryCard({
    super.key,
    required this.orderNumber,
    required this.from,
    required this.to,
    required this.status,
  });
  final String orderNumber;
  final String from;
  final String to;
  final DeliveryStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(10.0),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(width: 1, color: Colors.grey)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Order #$orderNumber",
                style: GoogleFonts.jetBrainsMono(fontSize: 12),
              ),
              Text("From $from to $to", style: GoogleFonts.poppins()),
            ],
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.grey.shade100,
            ),
            child: Text(
              capitalize(status.name),
              style: GoogleFonts.poppins(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
