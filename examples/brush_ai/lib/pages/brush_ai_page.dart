import 'package:cached_memory_image/cached_memory_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stability_sdk/stability_sdk.dart';

class BrushAiPage extends StatefulWidget {
  const BrushAiPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BrushAiPageState();
  }
}

class _BrushAiPageState extends State<BrushAiPage> {
  late TextEditingController queryController;

  late bool isStyleEnabled;
  late bool isArtistEnabled;

  late bool isOilPaintingSelected;
  late bool isSketchSelected;

  late bool isDaVinciSelected;
  late bool isAngeloSelected;

  late StabilityApiClient client;
  late bool isBrushLoading;

  String? image;

  @override
  void initState() {
    client = StabilityApiClient.init(dotenv.get('STABILITY_API_KEY'));

    queryController = TextEditingController();
    queryController.addListener(() {
      setState(() {
        Future.delayed(const Duration(milliseconds: 500), () {
          isStyleEnabled = queryController.text.isNotEmpty &&
              queryController.text.length > 20;
        });
      });
    });

    load();

    super.initState();
  }

  void load() {
    queryController.clear();

    isStyleEnabled = false;
    isArtistEnabled = false;

    isOilPaintingSelected = false;
    isSketchSelected = false;

    isDaVinciSelected = false;
    isAngeloSelected = false;

    image = null;
    isBrushLoading = false;
  }

  Widget buildMenu({
    required String title,
    required String imagePath,
    bool isActive = false,
  }) {
    double size = isActive ? 170 : 150;

    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0, 10),
                blurRadius: 20,
              )
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Widget buildGenerateButton({
    bool isActive = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: isActive ? 56 : 0,
          width: isActive ? 230 : 0,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0, 5),
                blurRadius: 30,
              )
            ],
            borderRadius: BorderRadius.circular(32),
          ),
          child: Center(
            child: isBrushLoading
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                      strokeWidth: 2,
                    ),
                  )
                : const Text(
                    'New Brush',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
          ),
        ),
      ],
    );
  }

  Future<void> generateImage(String prompt) async {
    setState(() {
      isBrushLoading = true;
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
          isBrushLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Brush AI',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          if (isStyleEnabled)
            IconButton(
              icon: const Icon(
                Icons.restore,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  load();
                });
              },
            ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: image != null && !isBrushLoading
                  ? Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: Text(
                              'Wow! That a great looking piece.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: CachedMemoryImage(
                              base64: image,
                              uniqueKey: image.toString(),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 24),
                          child: Text(
                            'What\'s on your mind today?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: queryController,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: const InputDecoration(
                                    hintText: 'I want an image of a dog...',
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          child: isStyleEnabled
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 24),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 24),
                                      child: Text(
                                        'Select style',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              isArtistEnabled = true;

                                              isOilPaintingSelected = true;
                                              isSketchSelected = false;
                                            });
                                          },
                                          child: buildMenu(
                                            title: 'Oil Painting',
                                            imagePath:
                                                'assets/images/oil_painting.png',
                                            isActive: isOilPaintingSelected,
                                          ),
                                        ),
                                        const SizedBox(width: 32),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              isArtistEnabled = true;

                                              isOilPaintingSelected = false;
                                              isSketchSelected = true;
                                            });
                                          },
                                          child: buildMenu(
                                            title: 'Pen/Sketch',
                                            imagePath:
                                                'assets/images/sketch.png',
                                            isActive: isSketchSelected,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          child: isArtistEnabled
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 32),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 24),
                                      child: Text(
                                        'Select artist',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              isDaVinciSelected = true;
                                              isAngeloSelected = false;
                                            });
                                          },
                                          child: buildMenu(
                                            title: 'Da Vinci',
                                            imagePath:
                                                'assets/images/davinci.png',
                                            isActive: isDaVinciSelected,
                                          ),
                                        ),
                                        const SizedBox(width: 32),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              isDaVinciSelected = false;
                                              isAngeloSelected = true;
                                            });
                                          },
                                          child: buildMenu(
                                            title: 'Michael Angelo',
                                            imagePath:
                                                'assets/images/michaelangelo.png',
                                            isActive: isAngeloSelected,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                        const SizedBox(height: 32),
                        GestureDetector(
                          child: buildGenerateButton(
                            isActive: isAngeloSelected || isDaVinciSelected,
                          ),
                          onTap: () {
                            final style = isOilPaintingSelected
                                ? 'oil painted by'
                                : 'sketched by';
                            final painter = isDaVinciSelected
                                ? 'Leonardo Da Vinci'
                                : 'Michael Angelo';
                            final text =
                                ' ${queryController.text}, $style $painter';
                            generateImage(text);
                          },
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
