// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemDto _$CartItemDtoFromJson(Map<String, dynamic> json) => CartItemDto(
  product: json['product'] == null
      ? null
      : ProductDTO.fromJson(json['product'] as Map<String, dynamic>),
  price: (json['price'] as num?)?.toInt(),
  quantity: (json['quantity'] as num?)?.toInt(),
  id: json['_id'] as String?,
);

Map<String, dynamic> _$CartItemDtoToJson(CartItemDto instance) =>
    <String, dynamic>{
      'product': instance.product,
      'price': instance.price,
      'quantity': instance.quantity,
      '_id': instance.id,
    };
