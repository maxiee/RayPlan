import 'package:flutter/material.dart';

import '../common/consts.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
          color: common_color_bubble,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: child,
    );
  }
}
