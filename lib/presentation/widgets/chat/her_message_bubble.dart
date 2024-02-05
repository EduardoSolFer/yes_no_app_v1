import "package:flutter/material.dart";
import "package:yes_no_app_v1/domain/entities/message.dart";

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key, required this.message});
  final Message message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.red, fontSize: 15),
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble( message.imageUrl! ),
        const SizedBox(height: 5),
        //TODO:imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageUrl;

  const _ImageBubble(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.network(
          imageUrl,
          width: size.width * 0.5,
          height: 150,
          fit: BoxFit.cover,
        ));
  }
}
