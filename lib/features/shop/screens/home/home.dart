import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            APrimaryHeaderContainer(
              child: Container()
              // Column(
              //   children: [
              //     ///App bar
              //     ///Search bar
              //     //Categories
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
