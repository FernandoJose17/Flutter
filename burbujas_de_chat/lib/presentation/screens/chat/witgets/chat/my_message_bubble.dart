import "package:flutter/material.dart";

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
     crossAxisAlignment: CrossAxisAlignment.end,
      children: [
      Container(
        decoration: BoxDecoration(
         color: colors.primary,
         borderRadius: BorderRadius.circular(20)
        
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Fernando Lugo", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
            ),
          ),
        const SizedBox(height: 10)
      ]
    );
  }
} 


