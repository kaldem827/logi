import 'package:logi/core/constants.dart';

class DeliveryRecord {
  final String orderNumber;
  final String from;
  final String to;
  final DateTime createdAt;
  final DeliveryStatus status;

  DeliveryRecord({
    required this.from,
    required this.to,
    required this.createdAt,
    required this.status,
    required this.orderNumber,
  });
}
