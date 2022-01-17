import 'package:flutter/material.dart';

class DeepLinkPage extends StatelessWidget {
  const DeepLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deep Link Page"),
      ),
      body: Center(
        child: Text("Deep Link Page"),
      ),
    );
  }
}
