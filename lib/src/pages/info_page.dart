import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({
    Key? key,
    required this.item,
  }) : super(key: key);
  final String item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item),
        centerTitle: true,
      ),
    );
  }
}
