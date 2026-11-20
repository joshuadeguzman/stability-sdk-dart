# stability_sdk example

A Flutter app that generates and edits images with `stability_sdk`.

```bash
flutter run --dart-define=STABILITY_API_KEY=your-key
```

Without a key, the app runs in demo mode. It never calls the API, and the Generate tab shows saved 512 by 512 images from Stability's older Stable Diffusion 2 engine, not live results. Editing needs a key.

Only pass a key like this for local testing. A published app should call Stability AI through your own backend. See "Keep your API key safe" in the [package README](../README.md).
