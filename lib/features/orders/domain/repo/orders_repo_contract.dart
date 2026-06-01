import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/features/orders/domain/models/orders_model.dart';

abstract class OrdersRepoContract {
  Future<BaseResponse<List<OrdersModel>>> getUserOrders();
}
