import 'package:flutter/material.dart';

class CustomChooseButton extends StatelessWidget {
  const CustomChooseButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.leading = const SizedBox(),
  }) : super(key: key);
  final String text;
  final Function() onPressed;
  final Widget leading;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 1,
      color: Theme.of(context).colorScheme.surfaceVariant,
      onPressed: onPressed,
      child: Row(
        children: [
          leading,
          Expanded(
              child: Text(
            text,
            textAlign: TextAlign.center,
          )),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
