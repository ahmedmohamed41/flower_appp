// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_seller_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestSellerResponse _$BestSellerResponseFromJson(Map<String, dynamic> json) =>
    BestSellerResponse(
      message: json['message'] as String?,
      bestSellerDto: (json['bestSeller'] as List<dynamic>?)
          ?.map((e) => BestSellerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BestSellerResponseToJson(BestSellerResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'bestSeller': instance.bestSellerDto,
    };
