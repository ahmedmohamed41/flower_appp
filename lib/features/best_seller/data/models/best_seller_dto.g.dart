// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_seller_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestSellerDto _$BestSellerDtoFromJson(Map<String, dynamic> json) =>
    BestSellerDto(
      message: json['message'] as String?,
      bestSeller: (json['bestSeller'] as List<dynamic>?)
          ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BestSellerDtoToJson(BestSellerDto instance) =>
    <String, dynamic>{
      'message': instance.message,
      'bestSeller': instance.bestSeller,
    };
