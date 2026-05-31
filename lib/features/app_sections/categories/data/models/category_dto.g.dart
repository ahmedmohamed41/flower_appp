// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => CategoryDto(
  message: json['message'] as String?,
  metadata: json['metadata'] == null
      ? null
      : MetadataDto.fromJson(json['metadata'] as Map<String, dynamic>),
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => CategoryItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CategoryDtoToJson(CategoryDto instance) =>
    <String, dynamic>{
      'message': instance.message,
      'metadata': instance.metadata,
      'categories': instance.categories,
    };
