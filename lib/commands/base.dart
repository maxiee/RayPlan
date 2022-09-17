import 'dart:async';

import 'package:tuple/tuple.dart';

FutureOr<R?> select<T, P, R>(T input, P param,
    List<Tuple2<T, FutureOr<R?> Function<P>(P param)>> matchers) async {
  for (final i in matchers) {
    if (i.item1 == input) {
      return i.item2(param);
    }
  }
  return null;
}
