import 'package:flutter/material.dart';


class AppLinearProgressIndicator extends StatelessWidget {
  const AppLinearProgressIndicator({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  LinearProgressIndicator(
      color: Theme.of(context).primaryColor,
    );
  }
}
