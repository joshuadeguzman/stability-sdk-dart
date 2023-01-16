import 'package:cached_memory_image/cached_memory_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stability_sdk/stability_sdk.dart';

class SingleImagePage extends StatefulWidget {
  const SingleImagePage({super.key});

  @override
  State<SingleImagePage> createState() => _SingleImagePageState();
}

class _SingleImagePageState extends State<SingleImagePage> {
  late StabilityApiClient client;
  late TextEditingController queryController;
  String? image;
  late bool hasInput;
  late bool isLoading;

  @override
  void initState() {
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
      image = null;
    });

    final request = RequestBuilder(prompt)
        .setHeight(512)
        .setWidth(512)
        .setEngineType(EngineType.inpainting_v2_0)
        .setSampleCount(1)
        .build();

    client.generate(request).listen((answer) {
      if (answer.artifacts?.isNotEmpty == true) {
        setState(() {
          image = answer.artifacts?.first.getImage();
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate Image'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (image != null && !isLoading)
                CachedMemoryImage(
                  base64: image,
                  uniqueKey: image.toString(),
                ),
              if (isLoading) const CircularProgressIndicator(),
              const SizedBox(height: 32),
              TextField(
                controller: queryController,
                maxLines: 2,
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
