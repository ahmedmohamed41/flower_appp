// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartDto _$CartDtoFromJson(Map<String, dynamic> json) => CartDto(
  id: json['_id'] as String?,
  user: json['user'] as String?,
  cartItems: (json['cartItems'] as List<dynamic>?)
      ?.map((e) => CartItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  appliedCoupons: json['appliedCoupons'] as List<dynamic>?,
  discount: (json['discount'] as num?)?.toInt(),
  totalPrice: (json['totalPrice'] as num?)?.toInt(),
  totalPriceAfterDiscount: (json['totalPriceAfterDiscount'] as num?)?.toInt(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$CartDtoToJson(CartDto instance) => <String, dynamic>{
  '_id': instance.id,
  'user': instance.user,
  'cartItems': instance.cartItems,
  'appliedCoupons': instance.appliedCoupons,
  'discount': instance.discount,
  'totalPrice': instance.totalPrice,
  'totalPriceAfterDiscount': instance.totalPriceAfterDiscount,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  '__v': instance.v,
};
