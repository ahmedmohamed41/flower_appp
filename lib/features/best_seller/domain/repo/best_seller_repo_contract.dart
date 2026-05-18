import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/features/best_seller/domain/models/best_seller_model.dart';

abstract class BestSellerRepoContract {
  Future<BaseResponse<List<BestSellerModel>>> getBestSeller();
}
