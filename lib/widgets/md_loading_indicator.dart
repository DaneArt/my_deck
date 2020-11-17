import 'package:flutter/material.dart';

class MDLoadingIndicator extends StatelessWidget {
  const MDLoadingIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
