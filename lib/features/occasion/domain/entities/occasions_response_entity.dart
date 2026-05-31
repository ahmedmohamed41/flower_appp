import 'package:flower_appp/features/occasion/domain/entities/occasion_entity.dart';

class OccasionsResponseEntity {
  final String? message;
  final List<OccasionEntity>? occasions;

  OccasionsResponseEntity({this.message, this.occasions});
}
