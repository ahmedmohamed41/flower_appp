import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../values/assets.gen.dart';

class CustomProductCard extends StatelessWidget {
  final String title;
  final ImageProvider imageProvider;
  final num price;
  final num? oldPrice;
  final int? discountPercent;
  final VoidCallback? onAddToCart;
  final VoidCallback? onTap;
  final String currency;
  final BoxFit imageFit;

  const CustomProductCard({
    required this.title,
    required this.imageProvider,
    required this.price,
    super.key,
    this.oldPrice,
    this.discountPercent,
    this.onAddToCart,
    this.onTap,
    this.currency = 'EGP',
    this.imageFit = BoxFit.cover,
  });

  CustomProductCard.asset({
    required String imagePath,
    required this.title,
    required this.price,
    super.key,
    this.oldPrice,
    this.discountPercent,
    this.onAddToCart,
    this.onTap,
    this.currency = 'EGP',
    this.imageFit = BoxFit.cover,
  }) : imageProvider = AssetImage(imagePath);

  CustomProductCard.network({
    required String imageUrl,
    required this.title,
    required this.price,
    super.key,
    this.oldPrice,
    this.discountPercent,
    this.onAddToCart,
    this.onTap,
    this.currency = 'EGP',
    this.imageFit = BoxFit.cover,
  }) : imageProvider = NetworkImage(imageUrl);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.placeHolderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Image(
                    image: imageProvider,
                    fit: imageFit,
                    width: double.infinity,
                    errorBuilder: (_, _, _) => Container(
                      color: AppColors.secondaryColor,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.image_not_supported_outlined,
                        color: AppColors.placeHolderColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.textStyleRegular12.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
              const SizedBox(height: 2),
              _PriceRow(
                currency: currency,
                price: price,
                oldPrice: oldPrice,
                discountPercent: discountPercent,
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                height: 32,
                child: ElevatedButton.icon(
                  onPressed: onAddToCart,
                  icon: SvgPicture.asset(
                    Assets.icons.shoppingCartIcon,
                    width: 16,
                    height: 16,
                    colorFilter: const ColorFilter.mode(
                      AppColors.whiteColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: const Text('Add to cart'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    foregroundColor: AppColors.whiteColor,
                    disabledBackgroundColor:
                        AppColors.primaryColor.withValues(alpha: .55),
                    disabledForegroundColor: AppColors.whiteColor,
                    elevation: 0,
                    minimumSize: Size.zero,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    textStyle: AppTextStyles.textStyleMedium12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String currency;
  final num price;
  final num? oldPrice;
  final int? discountPercent;

  const _PriceRow({
    required this.currency,
    required this.price,
    required this.oldPrice,
    required this.discountPercent,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        children: [
          Text(
            '$currency ${_formatPrice(price)}',
            style: AppTextStyles.textStyleMedium14.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          if (oldPrice != null) ...[
            const SizedBox(width: 8),
            Text(
              _formatPrice(oldPrice!),
              style: AppTextStyles.textStyleRegular12.copyWith(
                color: AppColors.greyColor,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
          if (discountPercent != null) ...[
            const SizedBox(width: 8),
            Text(
              '$discountPercent%',
              style: AppTextStyles.textStyleRegular12.copyWith(
                color: AppColors.successColor,
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _formatPrice(num value) {
    if (value % 1 == 0) {
      return value.toInt().toString();
    }
    return value.toStringAsFixed(2);
  }
}
