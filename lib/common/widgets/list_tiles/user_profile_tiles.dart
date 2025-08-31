import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/image_strings.dart';
import '../images/circular_image.dart';

class AUserProfileTile extends StatelessWidget {
  const AUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ACircularImage(
        image: AImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Adedeni',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: AColors.white),
      ),
      subtitle: Text(
        'adeshinaolayode@icloud.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: AColors.white),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.edit,
            color: AColors.white,
          )),
    );
  }
}
