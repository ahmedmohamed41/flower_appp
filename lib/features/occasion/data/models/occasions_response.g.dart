// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occasions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OccasionsResponse _$OccasionsResponseFromJson(Map<String, dynamic> json) =>
    OccasionsResponse(
      message: json['message'] as String?,
      occasions: (json['occasions'] as List<dynamic>?)
          ?.map((e) => OccasionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OccasionsResponseToJson(OccasionsResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'occasions': instance.occasions,
    };
