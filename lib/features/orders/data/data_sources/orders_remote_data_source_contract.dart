import 'package:flower_appp/features/orders/data/models/orders_response_dto.dart';

abstract class OrdersRemoteDataSource {
  Future<OrdersResponseDto> getUserOrders();
}
