import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logi/screens/home/widgets/delivery_record_card.dart';
import 'package:logi/screens/home/widgets/searchbar.dart';
import 'package:logi/screens/home/widgets/service_card.dart';
import 'package:logi/screens/home/widgets/shipment_card.dart';
import 'package:logi/screens/models/delivery_record.dart';
import 'package:logi/screens/widgets/custom_bottom_bar.dart';

final List<DeliveryRecord> deliveries = [
  DeliveryRecord(
    orderNumber: "762097837",
    from: "Maputo",
    to: "Beira",
    createdAt: DateTime.now(),
    status: .delivered,
  ),

  DeliveryRecord(
    orderNumber: "876273292",
    from: "Chimoio",
    to: "Inhambane",
    createdAt: DateTime.now(),
    status: .delivered,
  ),

  DeliveryRecord(
    orderNumber: "876273292",
    from: "Chimoio",
    to: "Inhambane",
    createdAt: DateTime.now(),
    status: .delivered,
  ),
  DeliveryRecord(
    orderNumber: "876273292",
    from: "Chimoio",
    to: "Inhambane",
    createdAt: DateTime.now(),
    status: .delivered,
  ),

  DeliveryRecord(
    orderNumber: "876273292",
    from: "Chimoio",
    to: "Inhambane",
    createdAt: DateTime.now(),
    status: .delivered,
  ),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final String imageUrl =
      "https://plus.unsplash.com/premium_photo-1689551670902-19b441a6afde?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        toolbarHeight: kToolbarHeight,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            ),
          ],
        ),
        title: SizedBox(
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Diane Ribeiro", style: GoogleFonts.inter(fontSize: 12)),
              const SizedBox(height: 2),
              Text("Brasilia", style: GoogleFonts.inter(fontSize: 10)),
            ],
          ),
        ),
        titleSpacing: 0,
        actionsPadding: const EdgeInsets.only(right: 10.0),
        actions: [
          Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(width: 1, color: Colors.grey.shade400),
              ),
              borderRadius: BorderRadius.circular(12),
            ),

            child: SvgPicture.asset("assets/icons/bell.svg"),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Searchbar(),
              const SizedBox(height: 16),
              Text(
                "Nearest deliveries",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              ShipmentTrackCard(),
              const SizedBox(height: 16),
              Text(
                "Services",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 8),
              SizedBox(
                height: 75,
                child: Row(
                  children: [
                    Expanded(
                      child: ServiceCard(
                        title: "Create",
                        icon: SvgPicture.asset(
                          "assets/icons/bell.svg",
                          width: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ServiceCard(
                        title: "Calculate",
                        icon: SvgPicture.asset(
                          "assets/icons/plus-minus.svg",
                          width: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ServiceCard(
                        title: "Receipts",
                        icon: SvgPicture.asset(
                          "assets/icons/receipt.svg",
                          width: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8 * 3),
              Text(
                "Delivery History",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 8),

              Column(
                children: deliveries.map((e) {
                  final DeliveryRecord record = e;
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: DeliveryHistoryCard(
                      orderNumber: record.orderNumber,
                      from: record.from,
                      to: record.to,
                      status: record.status,
                    ),
                  );
                }).toList(),
              ),

              const SizedBox(height: 60 + kToolbarHeight),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: CustomBottomBar(),
      ),
    );
  }
}
