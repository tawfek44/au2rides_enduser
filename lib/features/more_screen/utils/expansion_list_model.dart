import 'package:flutter/cupertino.dart';

import '../presentation/more_screen.dart';

class ExpansionListModel{
  String title;
  IconData icon;
  ExpansionListTileChoice choice;

  ExpansionListModel({required this.title, required this.icon,required this.choice});
}