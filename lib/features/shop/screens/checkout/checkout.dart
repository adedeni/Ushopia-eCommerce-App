import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/common/widgets/custom_shapes/containers/rounded_container.dart';
import '/common/widgets/success_screen/success_screen.dart';
import '/features/shop/screens/checkout/widgets/billing_address_section.dart';
import '/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import '/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import '/navigation_menu.dart';
import '/utilities/constants/colors.dart';
import '/utilities/constants/image_strings.dart';
import '../../../../common/widgets/buttons/gradient_elevated_buttons.dart';
import '../../../../common/widgets/products/cart/coupon_promo_container.dart';
import '../../../../utilities/helpers/helper_functions.dart';
import '/features/shop/screens/cart/widgets/cart_items.dart';
import '/utilities/constants/sizes.dart';
import '../../../../common/widgets/appbar/appbar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              //Items in cart
              ACartItems(showAddRemoveButton: false),
              SizedBox(height: ASizes.spaceBtwSections),
              //Coupon TextField
              ACouponCodeContainer(),
              SizedBox(height: ASizes.spaceBtwSections),

              //Billing Section
              ARoundedContainer(
                padding: EdgeInsets.all(ASizes.md),
                showBorder: true,
                backgroundColor: darkMode ? AColors.black : AColors.white,
                child: Column(
                  children: [
                    ///Pricing
                    ABillingAmountSection(),
                    SizedBox(height: ASizes.spaceBtwItems),

                    ///Divider
                    Divider(),
                    SizedBox(height: ASizes.spaceBtwItems),

                    ///Payments methods
                    ABillingPaymentSection(),
                    SizedBox(height: ASizes.spaceBtwItems),

                    ///Address
                    ABillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: AGradientElevatedButton(
          text: 'Checkout \$769',
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: AImages.successfulPaymentIcon,
              title: 'Payment Successful',
              subtitle: 'Your item is on the way',
              onPressed: () => Get.offAll(() => NavigationMenu()),
            ),
          ),
        ),
      ),
    );
  }
}
