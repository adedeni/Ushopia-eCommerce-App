import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';

class ASingleAddress extends StatelessWidget {
  const ASingleAddress({
    super.key, required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    return ARoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: Colors.red,
    );
  }
}
