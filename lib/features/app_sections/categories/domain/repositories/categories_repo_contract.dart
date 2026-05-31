import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/features/app_sections/categories/domain/entities/category_entity.dart';

abstract interface class CategoriesRepoContract {
  Future<BaseResponse<CategoryEntity>> getCategories();
}
