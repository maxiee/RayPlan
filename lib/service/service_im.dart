import 'package:flutter/widgets.dart';

class ServiceMessages extends ChangeNotifier {
  var imMessages = <Widget>[];

  sendUserMessage(Widget widget) {
    imMessages.add(widget);
    notifyListeners();
  }

  sendSystemMessage(Widget widget) {
    imMessages.add(widget);
    notifyListeners();
  }
}

