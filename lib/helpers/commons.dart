import 'package:flutter/material.dart';

class Commons {
  static Widget loadingWidget(String message) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(18), child: Text(message)),
        const CircularProgressIndicator.adaptive()
      ],
    );
  }
}
