import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/features/best_seller/data/models/best_seller_dto.dart';

abstract class BestSellerRemoteDataSourceContract {
  Future<BaseResponse<BestSellerDto>> getBestSeller();
}
