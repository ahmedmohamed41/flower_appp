import 'package:dio/dio.dart';
import 'package:flower_appp/core/values/api_endpoints.dart';

import 'package:flower_appp/features/app_sections/categories/data/models/category_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/values/app_strings.dart';

part 'categories_api_client.g.dart';

@singleton
@RestApi()
abstract class CategoriesApiClient {
  @factoryMethod
  factory CategoriesApiClient(Dio dio) => _CategoriesApiClient(dio);
  @Extra({AppStrings.noToken: true})
  @GET(ApiEndpoints.categories)
  Future<CategoryDto> getCategories();
}
