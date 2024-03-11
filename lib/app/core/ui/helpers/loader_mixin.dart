import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// O "T" usado é um Generics
mixin LoaderMixin<T extends StatefulWidget> on State<T> {
  var isOpen = false;

  void showLoader() {
    if (!isOpen) {
      isOpen = true;
      showDialog(
        context: context,
        builder: (context) {
          return LoadingAnimationWidget.inkDrop(
            color: Colors.white,
            size: 60,
          );
        },
      );
    }
  }

  void hideLoader() {
    if (isOpen) {
      isOpen = false;
      Navigator.of(context).pop();
    }
  }
}
