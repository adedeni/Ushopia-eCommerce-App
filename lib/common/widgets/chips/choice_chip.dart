import 'package:flutter/material.dart';
import '/common/widgets/custom_shapes/containers/circular_container.dart';
import '/utilities/helpers/helper_functions.dart';

import '../../../utilities/constants/colors.dart';

class AChoiceChip extends StatelessWidget {
  const AChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = AHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(
          color: selected ? AColors.white : null,
        ),
        avatar: isColor
            ? ACircularContainer(
                width: 50,
                height: 50,
                backgroundColor: AHelperFunctions.getColor(text)!)
            : null,
        shape: isColor ? CircleBorder() : null,
        backgroundColor: isColor ? AHelperFunctions.getColor(text)! : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        selectedColor: isColor ? AHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
