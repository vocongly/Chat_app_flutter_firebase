import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool sender;
  const ChatBubble({super.key, required this.message, required this.sender});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: sender ? Colors.blue : Colors.grey[300]),
      padding: const EdgeInsets.all(8),
      child: Text(
        message,
        style: TextStyle(color: sender ? Colors.white : Colors.black),
      ),
    );
  }
}
