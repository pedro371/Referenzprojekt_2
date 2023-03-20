import 'package:flutter/material.dart';

import '../utils/style_variables/padding_variables.dart';

class ChatBubble extends StatelessWidget {
  final bool tom;
  final String message;

  const ChatBubble({Key? key, required this.tom, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(tom ? 8 : 50, 8, tom ? 50 : 8, 8),
      padding: const EdgeInsets.all(PaddingVariables.basic),
      decoration: BoxDecoration(
        color: tom ? Colors.red.withOpacity(0.5) : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: tom ? Colors.red.withOpacity(0.5) : Colors.black12,
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(tom ? -1 : 1, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.black),
          ),
          const SizedBox(height: 6),
          Text('12:06 Uhr Tom', style: Theme.of(context).textTheme.bodySmall!),
        ],
      ),
    );
  }
}
