// class DataModel {
//   int? total;
//   int? skip;
//   int? limit;
//   List<Products> ? products;
//
//   DataModel({this.total, this.skip, this.limit, this.products});
//
//   factory DataModel.fromJson(Map json){
//     return DataModel(
//         total: json['total'],
//         skip: json['skip'],
//         limit: json['limit'],
//         products: (json['products'] as List).map((e) => Products.fromJson(e)).toList(),
//     );
//   }
// }
//
//
// class Products {
//   final int id;
//   final String title;
//   final String description;
//   final String category;
//   final double price;
//   final double discountPercentage;
//   final double rating;
//   final int stock;
//   final List<String> tags;
//   final String brand;
//   final String sku;
//   final int weight;
//   final Dimensions dimensions;
//   final String warrantyInformation;
//   final String shippingInformation;
//   final String availabilityStatus;
//   final List<Review> reviews;
//   final String returnPolicy;
//   final int minimumOrderQuantity;
//   final Meta meta;
//   final List<String> images;
//   final String thumbnail;
//
//   Products({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.category,
//     required this.price,
//     required this.discountPercentage,
//     required this.rating,
//     required this.stock,
//     required this.tags,
//     required this.brand,
//     required this.sku,
//     required this.weight,
//     required this.dimensions,
//     required this.warrantyInformation,
//     required this.shippingInformation,
//     required this.availabilityStatus,
//     required this.reviews,
//     required this.returnPolicy,
//     required this.minimumOrderQuantity,
//     required this.meta,
//     required this.images,
//     required this.thumbnail,
//   });
//
//   factory Products.fromJson(Map<String, dynamic> json){
//     return Products(
//       id: json['id'],
//       title: json['title'],
//       description: json['description'],
//       category: json['category'],
//       price: json['price'],
//       discountPercentage: json['discountPercentage'],
//       rating: json['rating'],
//       stock: json['stock'],
//       tags: List<String>.from(json['tags']),
//       brand: json['brand'],
//       sku: json['sku'],
//       weight: json['weight'],
//       dimensions: Dimensions.fromJson(json),
//       warrantyInformation: json['warrantyInformation'],
//       shippingInformation: json['shippingInformation'],
//       availabilityStatus: json['availabilityStatus'],
//       reviews: (json['reviews'] as List)
//           .map((reviewJson) => Review.fromJson(reviewJson))
//           .toList(),
//       returnPolicy: json['returnPolicy'],
//       minimumOrderQuantity: json['minimumOrderQuantity'],
//       meta: Meta.fromJson(json),
//       images: List<String>.from(json['images']),
//       thumbnail: json['thumbnail'],
//     );
//   }
// }
//
// class Dimensions {
//   final double width;
//   final double height;
//   final double depth;
//
//   Dimensions({
//     required this.width,
//     required this.height,
//     required this.depth,
//   });
//
//   factory Dimensions.fromJson(Map<String, dynamic> json){
//     return Dimensions(
//       width: json['width'], height: json['height'], depth: json['depth'],);
//   }
// }
//
// class Review {
//   final int rating;
//   final String comment;
//   final DateTime date;
//   final String reviewerName;
//   final String reviewerEmail;
//
//   Review({
//     required this.rating,
//     required this.comment,
//     required this.date,
//     required this.reviewerName,
//     required this.reviewerEmail,
//   });
//
//   factory Review.fromJson(Map<String, dynamic> json){
//     return Review(
//       rating: json['rating'],
//       comment: json['comment'],
//       date: json['date'],
//       reviewerName: json['reviewerName'],
//       reviewerEmail: json['reviewerEmail'],
//     );
//   }
// }
//
//
// class Meta {
//   final DateTime createdAt;
//   final DateTime updatedAt;
//   final String barcode;
//   final String qrCode;
//
//   Meta({
//     required this.createdAt,
//     required this.updatedAt,
//     required this.barcode,
//     required this.qrCode,
//   });
//
//   factory Meta.fromJson(Map<String, dynamic> json) {
//     return Meta(
//       createdAt: json['createdAt'],
//       updatedAt: json['updatedAt'],
//       barcode: json['barcode'],
//       qrCode: json['qrCode'],
//     );
//   }
// }

class DataModel {
  int? total;
  int? skip;
  int? limit;
  List<Products>? products;

  DataModel({this.total, this.skip, this.limit, this.products});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e))
          .toList(),
    );
  }
}

class Products {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final List<String> tags;
  final String brand;
  final String sku;
  final int weight;
  final Dimensions dimensions;
  final String warrantyInformation;
  final String shippingInformation;
  final String availabilityStatus;
  final List<Review> reviews;
  final String returnPolicy;
  final int minimumOrderQuantity;
  final Meta meta;
  final List<String> images;
  final String thumbnail;

  Products({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
      discountPercentage: (json['discountPercentage'] ?? 0).toDouble(),
      rating: (json['rating'] ?? 0).toDouble(),
      stock: json['stock'] ?? 0,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((tag) => tag as String)
          .toList() ?? [],
      brand: json['brand'] ?? '',
      sku: json['sku'] ?? '',
      weight: json['weight'] ?? 0,
      dimensions: Dimensions.fromJson(json['dimensions'] ?? {}),
      warrantyInformation: json['warrantyInformation'] ?? '',
      shippingInformation: json['shippingInformation'] ?? '',
      availabilityStatus: json['availabilityStatus'] ?? '',
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((reviewJson) => Review.fromJson(reviewJson))
          .toList() ?? [],
      returnPolicy: json['returnPolicy'] ?? '',
      minimumOrderQuantity: json['minimumOrderQuantity'] ?? 0,
      meta: Meta.fromJson(json['meta'] ?? {}),
      images: (json['images'] as List<dynamic>?)
          ?.map((image) => image as String)
          .toList() ?? [],
      thumbnail: json['thumbnail'] ?? '',
    );
  }
}

class Dimensions {
  final double width;
  final double height;
  final double depth;

  Dimensions({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) {
    return Dimensions(
      width: (json['width'] ?? 0).toDouble(),
      height: (json['height'] ?? 0).toDouble(),
      depth: (json['depth'] ?? 0).toDouble(),
    );
  }
}

class Review {
  final int rating;
  final String comment;
  final DateTime date;
  final String reviewerName;
  final String reviewerEmail;

  Review({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      rating: json['rating'] ?? 0,
      comment: json['comment'] ?? '',
      date: DateTime.parse(json['date'] ?? DateTime.now().toIso8601String()),
      reviewerName: json['reviewerName'] ?? '',
      reviewerEmail: json['reviewerEmail'] ?? '',
    );
  }
}

class Meta {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String barcode;
  final String qrCode;

  Meta({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      createdAt: DateTime.parse(json['createdAt'] ?? DateTime.now().toIso8601String()),
      updatedAt: DateTime.parse(json['updatedAt'] ?? DateTime.now().toIso8601String()),
      barcode: json['barcode'] ?? '',
      qrCode: json['qrCode'] ?? '',
    );
  }
}
