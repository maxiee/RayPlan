import 'dart:async';

import 'package:flutter/widgets.dart';

abstract class FunctionalStatefulWidget<Ret> extends StatefulWidget {
  final completer = Completer<Ret>();

  FunctionalStatefulWidget({super.key});

  Future<Ret> then() {
    return completer.future;
  }
}