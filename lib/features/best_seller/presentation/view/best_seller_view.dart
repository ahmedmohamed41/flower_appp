import 'package:flower_appp/core/shared_features/cubit/home_shared_cubit.dart';
import 'package:flower_appp/core/shared_features/states/home_shared_states.dart';
import 'package:flower_appp/core/values/app_strings.dart';
import 'package:flower_appp/core/widgets/custom_app_bar.dart';
import 'package:flower_appp/core/widgets/custom_product_card.dart';
import 'package:flower_appp/features/best_seller/domain/models/best_seller_model.dart';
import 'package:flower_appp/features/best_seller/presentation/widgets/custom_best_seller_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerView extends StatelessWidget {
  const BestSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppStrings.bestSeller),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(AppStrings.bloomWithBestSellers),
            const SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<HomeSharedCubit, HomeSharedStates>(
                builder: (context, state) {
                  final bestSellersState = state.bestSellersState;

                  if (bestSellersState.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (bestSellersState.errorMessage != null) {
                    return Center(child: Text(bestSellersState.errorMessage!));
                  }

                  final bestSellers = bestSellersState.data ?? [];

                  if (bestSellers.isEmpty) {
                    return const Center(child: Text('No Products Found'));
                  }

                  return CustomBestSellerGrid(bestSellers: bestSellers);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
