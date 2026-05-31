import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/core/shared_features/products/data/models/products_response.dart';

abstract interface class ProductsRemoteDataSourceContract {
  Future<BaseResponse<ProductsResponseDto>> getProducts({
    String? categoryId,
    String? occasionId,
    String? search,
  });
}
