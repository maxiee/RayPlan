import 'package:flutter/widgets.dart';

class ServiceMessages extends ChangeNotifier {
  var imMessages = <Widget>[];

  sendUserMessage(Widget widget) {
    imMessages.add(Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [widget],
    ));
    notifyListeners();
  }

  sendSystemMessage(Widget widget) {
    imMessages.add(Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [widget],
    ));
    notifyListeners();
  }
}

