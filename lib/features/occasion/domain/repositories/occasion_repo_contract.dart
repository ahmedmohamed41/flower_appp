import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/features/occasion/domain/entities/occasions_response_entity.dart';

abstract interface class OccasionRepoContract {
  Future<BaseResponse<OccasionsResponseEntity>> getOccasions();
}
