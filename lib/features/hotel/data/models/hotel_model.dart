
import 'package:test/features/hotel/domain/entities/hotel.dart';

class HotelModel extends Hotel {
  const HotelModel(
      {required super.name,
      required super.currency,
      required super.image,
      required super.review,
      required super.address,
      required super.reviewScore,
      required super.starts,
      required super.price});

  factory HotelModel.fromJson(Map<String, dynamic> json) =>HotelModel(
        name: json['name'] ,
        currency: json['currency'],
        image: json['image'],
        review: json['review'],
        address: json['address'],
        reviewScore: json['review_score'].toDouble() ?? 0.0,
        starts: json['starts'].toInt() ?? 0.0,
        price: json['price'],
      );
}
