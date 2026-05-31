import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/core/shared_features/products/domain/entities/products_response_entity.dart';

abstract interface class ProductsRepoContract {
  Future<BaseResponse<ProductsResponseEntity>> getProducts({
    String? categoryId,
    String? occasionId,
    String? search,
  });
}
