import 'dart:convert';

class LoverColor {
  LoverColor({
    required this.id,
    required this.title,
    required this.userName,
    required this.numHearts,
    required this.hex,
  });

  final int id;
  final String title;
  final String userName;
  final num numHearts;
  final String hex;

  factory LoverColor.fromJson(Map<String, dynamic> json) {
    return LoverColor(
      id: json['id'] as int,
      title: json['title'] as String,
      userName: json['userName'] as String,
      numHearts: json['numHearts'] as num,
      hex: json['hex'] as String,
    );
  }
}
