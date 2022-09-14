import 'package:flutter/material.dart';
import 'package:ray_plan/widget/message_card.dart';

class MessageText extends StatelessWidget {
  const MessageText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return MessageCard(child: Text(text));
  }
}