import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/features/app_sections/cart/domain/entities/cart_response_entity.dart';
import 'package:flower_appp/features/app_sections/cart/domain/repositories/cart_repo_contract.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetItemsCartUseCase {
  GetItemsCartUseCase(this.cartRepoContract);
  final CartRepoContract cartRepoContract;

  Future<BaseResponse<CartResponseEntity>> call() {
    return cartRepoContract.getCartItems();
  }
}
