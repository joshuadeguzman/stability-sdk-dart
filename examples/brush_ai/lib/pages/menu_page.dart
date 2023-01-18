import 'package:brush_ai/pages/brush_ai_page.dart';
import 'package:brush_ai/pages/multiple_images.dart';
import 'package:brush_ai/pages/single_image.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Page'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              'Brush AI',
            ),
            contentPadding: const EdgeInsets.all(16),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const BrushAiPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Generate Single Image',
            ),
            contentPadding: const EdgeInsets.all(16),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SingleImagePage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Generate Multiple Images',
            ),
            contentPadding: const EdgeInsets.all(16),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const MultipleImagesPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
