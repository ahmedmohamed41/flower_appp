// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponseDto _$ProductsResponseDtoFromJson(Map<String, dynamic> json) =>
    ProductsResponseDto(
      message: json['message'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsResponseDtoToJson(
  ProductsResponseDto instance,
) => <String, dynamic>{
  'message': instance.message,
  'products': instance.products,
};
