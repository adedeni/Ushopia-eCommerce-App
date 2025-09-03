import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/appbar/appbar.dart';
import 'package:ushopia/utilities/constants/sizes.dart';

import 'widgets/order_lists.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: AAppBar(
        showBackArrow: true,
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(ASizes.defaultSpace),

        //Orders
        child: AGridListItems(),
      ),

      
    );
  }
}
