# stability_sdk

An implementation of [Stability AI](https://platform.stability.ai/) SDK in Dart. Stability AI is a solution studio dedicated to innovating ideas.


## Prerequisites

* Stability AI requires you to create your own API key to make calls to the API. You can create one [here](https://platform.stability.ai/docs/getting-started/authentication).

* Create a `.env` file and set your Stability AI API key

## Usage

The example provided is using the SDK directly in a Flutter app. In most cases, you're going to use the SDK in the backend using tools like [Dart Frog](https://pub.dev/packages/dart_frog). This is to secure the API key and to have more control of the incoming requests, e.g. controlling rate limits or blocking sensitive content.

```dart
// 1. Setup the API client
final client = StabilityApiClient.init("<YOUR_API_KEY_HERE>");

// 2. Create a generation request
final request = RequestBuilder("an oil painting of a dog in the canvas, wearing knight armor, realistic painting by Leonardo da Vinci")
    .setHeight(512)
    .setWidth(512)
    .setEngineType(EngineType.inpainting_v2_0)
    .setSampleCount(1)
    .build();

// 3. Subscribe to the response
client.generate(request).listen((answer) {
    image = answer.artifacts?.first.getImage();
});

```

**Examples**

Brush AI

![brush-ai demo](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/demo/demo_brush_ai.gif)


*and more sample outputs...*

**Dogs**

"generate an oil painting canvas of a dog, realistic, painted by Leonardo da Vinci"

|Output 1|Output 2|Output 3|
|---|---|---|
![dog-3](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/dogs/1.png)|![dog-2](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/dogs/2.png)|![dog-3](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/dogs/3.png)|


**Cats**

"generate an oil painting canvas of a cat, realistic, painted by Leonardo da Vinci"

|Output 1|Output 2|Output 3|
|---|---|---|
![cat-3](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cats/1.png)|![cat-2](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cats/2.png)|![cat-3](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cats/3.png)|


**Cyberpunk**

"generate a cyberpunk scene, in japan, realistic street scene on the night"

|Output 1|Output 2|Output 3|
|---|---|---|
![cyberpunk-3](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cyberpunk/1.png)|![cyberpunk-2](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cyberpunk/2.png)|![cyberpunk-3](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cyberpunk/3.png)|


## Features

* [x] Text-to-image

Upcoming

* [ ] Image-to-image
* [ ] Inpainting + Masking
* [ ] CLIP guidance
* [ ] Multi-prompting

## Connect

Let's connect on [@joshuamdeguzman](https://twitter.com/joshuadeguzman).

## License

[BSD 3-Clause](https://github.com/joshuadeguzman/stability_sdk/blob/main/.github/LICENSE.md)