import 'package:color_list/models/lover_color.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ColorService {
  static final url = 'https://www.colourlovers.com/api/colors/top?format=json';
  Future<http.Response> fetchColors() {
    return http.get(Uri.parse(ColorService.url));
  }

  Future<List<LoverColor>> fetchTopColors() async {
    final response = await http.get(Uri.parse(ColorService.url));
    if (response.statusCode == 200) {
      final List<dynamic> parsed = jsonDecode(response.body);
      final List<LoverColor> loverColors =
          List<LoverColor>.from(parsed.map<LoverColor>((dynamic e) => LoverColor.fromJson(e)));
      return loverColors;
    } else {
      throw Exception('no colors');
    }
  }
}
