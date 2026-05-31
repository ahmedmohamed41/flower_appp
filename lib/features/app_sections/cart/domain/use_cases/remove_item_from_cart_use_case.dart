import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/features/app_sections/cart/domain/entities/cart_response_entity.dart';
import 'package:flower_appp/features/app_sections/cart/domain/repositories/cart_repo_contract.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveItemFromCartUseCase {
  final CartRepoContract cartRepoContract;
  RemoveItemFromCartUseCase(this.cartRepoContract);
  Future<BaseResponse<CartResponseEntity>> call(String productId) {
    return cartRepoContract.removeItemFromCart(productId);
  }
}
