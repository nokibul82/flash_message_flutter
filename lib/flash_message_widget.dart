import 'package:flutter/material.dart';

class FlashMessageErrorWidget extends StatelessWidget {
  const FlashMessageErrorWidget({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.redAccent, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            const SizedBox(
              width: 45,
              child: Icon(
                Icons.error,
                size: 35,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Oh Snap !",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  Text(
                    message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class FlashMessageSuccessWidget extends StatelessWidget {
  const FlashMessageSuccessWidget({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.greenAccent, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            const SizedBox(
              width: 45,
              child: Icon(
                Icons.check_circle,
                size: 35,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Success !",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  Text(
                    message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
