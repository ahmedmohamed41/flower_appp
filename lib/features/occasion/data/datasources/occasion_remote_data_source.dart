import 'package:flower_appp/features/occasion/data/models/occasions_response.dart';

abstract interface class OccasionRemoteDataSource {
  Future<OccasionsResponse> getOccasions();
}
