import 'package:flower_appp/config/base_response/base_response.dart';
import '../../../../core/shared_features/products/domain/entities/products_response_entity.dart';

abstract class BestSellerRepoContract {
  Future<BaseResponse<ProductsResponseEntity>> getBestSeller();
}
