import '../models/lover_color.dart';
import 'package:flutter/material.dart';

class ColorTile extends StatelessWidget {
  const ColorTile(this.loverColor, {super.key});
  final LoverColor loverColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(int.parse('0xff' + loverColor.hex)),
        child: Text('${loverColor.numHearts}'),
      ),
      subtitle: Text(loverColor.userName),
      title: Text(loverColor.title),
    );
  }
}
