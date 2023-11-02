import 'package:color_list/models/lover_color.dart';
import 'package:color_list/widgets/color_tile.dart';
import 'package:flutter/material.dart';
import 'services/color_service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final service = ColorService();
//   late Future<List<LoverColor>> colorList;
  List<LoverColor> colors = [];
  @override
  void initState() {
    super.initState();
    // colorList = service.fetchTopColors();
    service.fetchTopColors().then((list) {
      setState(() {
        colors = list;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView.builder(
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return ColorTile(colors[index]);
              }),
        ),
      ),
    );
  }
}
