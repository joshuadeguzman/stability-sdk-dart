## 1.0.0

A rewrite for the Stability AI REST API v2beta. See "Migrating from 0.x" in the README.

* Add `StabilityClient` with `generate` (Ultra, Core, SD 3.5), `upscale` (Fast, Conservative, Creative), `edit` (Erase, Inpaint, Outpaint, Search and Replace, Search and Recolor, Remove Background, Replace Background and Relight), `control` (Sketch, Structure, Style Guide, Style Transfer) and `results` for async services.
* Add typed options (`ImageAspectRatio`, `StylePreset`, `OutputFormat`, `Sd35Model`), results (`GeneratedImage`, `AsyncGeneration`) and one exception class per API error.
* Check arguments before sending a request.
* Support a custom `baseUrl`, so requests can go through your own backend.
* On the web, ask for JSON responses, since browsers hide the `seed` and `finish-reason` headers.
* Remove the gRPC client, the generated protobuf code and the Flutter dependency. The package is now pure Dart.
* Replace the Brush AI example with a Flutter example that has a demo mode.

## 0.1.2

* Add Brush AI example

## 0.1.1

* Doc and example updates
* Minor fixes and improvements

## 0.1.0

* Add more examples on usage
* Add more Stability AI entities
* Minor bug fixes & improvements

## 0.0.3

* Improvements on the example app

## 0.0.2

* Add example section
* Update output assets


## 0.0.1

* Initial release of Stability AI SDK
