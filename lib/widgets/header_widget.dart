import 'package:flutter/material.dart';
import 'package:theme_mode/extensions/extension.dart';

const imageUrl =
    'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hai", style: context.typography.buttonSmall),
              Text("Purboyndra", style: context.typography.buttonXLarge),
              Text("Jakarta, Indonesia", style: context.typography.inputHint),
            ],
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage(imageUrl)),
            ),
          ),
        ],
      ),
    );
  }
}
