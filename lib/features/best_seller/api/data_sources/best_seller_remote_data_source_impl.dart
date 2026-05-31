import 'dart:async';

import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/core/errors/failures.dart';
import 'package:flower_appp/features/best_seller/api/api_client/best_seller_api_client.dart';
import 'package:flower_appp/features/best_seller/data/data_sources/best_seller_remote_data_source_contract.dart';
import 'package:flower_appp/features/best_seller/data/models/best_seller_dto.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BestSellerRemoteDataSourceContract)
class BestSellerRemoteDataSourceImpl
    implements BestSellerRemoteDataSourceContract {
  final BestSellerApiClient _bestSellerApiClient;

  BestSellerRemoteDataSourceImpl(this._bestSellerApiClient);

  @override
  Future<BaseResponse<BestSellerDto>> getBestSeller() async {
    try {
      final response = await _bestSellerApiClient.getBestSellers();

      return SuccessBaseResponse<BestSellerDto>(data: response);
    } catch (e) {
      return ErrorBaseResponse<BestSellerDto>(
        errorMessage: ServerFailure.failureHandler(e).errorMessage,
      );
    }
  }
}
