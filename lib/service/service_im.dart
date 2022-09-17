import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:ray_plan/comp/base/functional_sateful_widget.dart';
import 'package:ray_plan/widget/message_card.dart';
import 'package:ray_plan/widget/message_text.dart';

import '../global.dart';

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

Future<T> send_user_widget_chain<T>(FunctionalStatefulWidget<T> widget) async {
  Global.serviceMessages.sendUserMessage(widget);
  return widget.then();
}

Future<T> send_system_widget_chain<T>(
    FunctionalStatefulWidget<T> widget) async {
  Global.serviceMessages.sendSystemMessage(widget);
  return widget.then();
}

Future<void> send_text_user_message_chain(String text) async {
  Global.serviceMessages.sendUserMessage(MessageText(text: text));
}

Future<void> send_text_system_message_chain(String text) async {
  Global.serviceMessages.sendSystemMessage(MessageText(text: text));
}

void send_text_user_message(String text) async {
  Global.serviceMessages.sendUserMessage(MessageText(text: text));
}

void send_text_system_message(String text) async {
  Global.serviceMessages.sendSystemMessage(MessageText(text: text));
}

void send_system_widget(Widget widget) {
  Global.serviceMessages.sendSystemMessage(MessageCard(child: widget));
}

void send_user_widget(Widget widget) {
  Global.serviceMessages.sendUserMessage(MessageCard(child: widget));
}
