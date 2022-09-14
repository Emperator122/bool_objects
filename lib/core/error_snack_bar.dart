import 'package:flutter/material.dart';

mixin ErrorSnackBar {

  SnackBar getErrorSnackBar({required String error}) => SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: const RoundedRectangleBorder(
          side: BorderSide(width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        content: RichText(
          text: TextSpan(
              text: 'Ошибка синхронизации\r\n',
              style: const TextStyle(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: error,
                  style: const TextStyle(fontWeight: FontWeight.normal),
                )
              ]),
        ),
      );
}
