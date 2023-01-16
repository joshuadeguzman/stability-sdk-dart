import 'package:cached_memory_image/cached_memory_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stability_sdk/stability_sdk.dart';

class MultipleImagesPage extends StatefulWidget {
  const MultipleImagesPage({super.key});

  @override
  State<MultipleImagesPage> createState() => _MultipleImagesPageState();
}

class _MultipleImagesPageState extends State<MultipleImagesPage> {
  late StabilityApiClient client;
  late TextEditingController queryController;
  late List<Artifact?> images;
  late bool hasInput;
  late bool isLoading;

  @override
  void initState() {
    images = [];
    hasInput = false;
    isLoading = false;
    client = StabilityApiClient.init(dotenv.get('STABILITY_API_KEY'));
    queryController = TextEditingController();
    queryController.addListener(() {
      if (queryController.text.isNotEmpty) {
        setState(() {
          hasInput = true;
        });
      } else {
        setState(() {
          hasInput = false;
        });
      }
    });

    super.initState();
  }

  Future<void> generateImage(String prompt) async {
    setState(() {
      isLoading = true;
      images = [];
    });

    final request = RequestBuilder(prompt)
        .setHeight(512)
        .setWidth(512)
        .setEngineType(EngineType.inpainting_v2_0)
        .setSampleCount(4)
        .build();

    client.generate(request).listen((answer) {
      if (answer.artifacts != null && answer.artifacts!.isNotEmpty) {
        for (int i = 0; i < answer.artifacts!.length; i++) {
          setState(() {
            images.add(answer.artifacts![i]);

            if (i == answer.artifacts!.length - 1) {
              isLoading = false;
            }
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate Images'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int i) {
                    return Center(
                      child: CachedMemoryImage(
                        scale: 0.5,
                        base64: images[i]!.getImage(),
                        uniqueKey: images[i]!.seed.toString(),
                      ),
                    );
                  },
                ),
              ),
              if (isLoading) const CircularProgressIndicator(),
              const SizedBox(height: 32),
              TextField(
                controller: queryController,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: hasInput
                    ? () {
                        generateImage(queryController.text);
                      }
                    : null,
                child: const Text('Generate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
