import 'package:flutter/widgets.dart';

class ServiceMessages extends ChangeNotifier {
  var imMessages = <Widget>[];

  final space = SizedBox(height: 20);

  sendUserMessage(Widget widget) {
    imMessages.add(Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [widget],
    ));
    imMessages.add(space);
    notifyListeners();
  }

  sendSystemMessage(Widget widget) {
    imMessages.add(Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [widget],
    ));
    imMessages.add(space);
    notifyListeners();
  }
}

