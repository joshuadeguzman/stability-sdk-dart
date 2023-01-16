# stability_sdk

An implementation of [Stability AI](https://platform.stability.ai/) SDK in Dart.


## Example

```dart
// Generate a client
final client = StabilityApiClient.init(dotenv.get('STABILITY_API_KEY'));

// Create a request
final request = StabilityRequest('a realistic, cyberpunk scene');
    client.generateAsync(request).listen((answer) {
        if (answer?.artifacts.isNotEmpty == true) {
            setState(() {
                image = answer.artifacts.first.getImage();
            });
        }
    });
});
```

## Outputs

|Cyberpunk|Cats|Dogs|
|---|---|---|
|![cyberpunk-1](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cyberpunk/1.png)|![cats-1](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cats/1.png)|![dogs-1](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/dogs/1.png)|
|![cyberpunk-2](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cyberpunk/2.png)|![cats-2](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cats/2.png)|![dogs-2](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/dogs/2.png)|
|![cyberpunk-3](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cyberpunk/3.png)|![cats-3](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/cats/3.png)|![dogs-3](https://raw.githubusercontent.com/joshuadeguzman/stability-sdk-dart/main/docs/assets/dogs/3.png)|


## Connect

Let's connect on [@joshuamdeguzman](https://twitter.com/joshuadeguzman).

## License

[BSD 3-Clause](https://github.com/joshuadeguzman/stability_sdk/blob/main/.github/LICENSE.md)