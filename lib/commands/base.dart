import 'dart:async';

import 'package:tuple/tuple.dart';

FutureOr select<T, P>(T input, P param,
    List<Tuple2<T, FutureOr Function(P param)>> matchers) async {
  for (final i in matchers) {
    if (i.item1 == input) {
      i.item2(param);
    }
  }
}
