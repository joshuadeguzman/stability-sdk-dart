import 'package:cached_memory_image/cached_memory_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stability_sdk/stability_sdk.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brush AI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Brush AI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late StabilityApiClient client;
  late TextEditingController queryController;
  String? image;
  late bool isLoading;

  @override
  void initState() {
    isLoading = false;
    client = StabilityApiClient.init(dotenv.get('STABILITY_API_KEY'));
    queryController = TextEditingController();

    super.initState();
  }

  Future<void> generateImage(String prompt) async {
    final request = StabilityRequest(prompt);
    client.generateAsync(request).listen((answer) {
      if (answer?.artifacts.isNotEmpty == true) {
        setState(() {
          image = answer!.artifacts.first.getImage();
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  if (queryController.text.isNotEmpty) {
                    setState(() {
                      isLoading = true;
                    });
                    generateImage(queryController.text);
                  }
                },
                child: const Text('Generate Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
