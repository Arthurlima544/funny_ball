import 'package:flutter/material.dart';

class AppSizes {
  late Size currentSize;

  void getCurrentSize(BuildContext context) =>
      currentSize = MediaQuery.of(context).size;

  Size getPersonageSize(BuildContext context) {
    getCurrentSize(context);

    return Size(currentSize.width / 3, currentSize.height / 3);
  }

  Size getPlataformSize(BuildContext context) {
    getCurrentSize(context);

    return Size(currentSize.width / 2, currentSize.height / 2);
  }
}
