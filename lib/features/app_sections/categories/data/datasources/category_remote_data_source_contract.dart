import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/features/app_sections/categories/data/models/category_dto.dart';

abstract interface class CategoriesRemoteDataSourceContract {
  Future<BaseResponse<CategoryDto>> getCategories();
}
