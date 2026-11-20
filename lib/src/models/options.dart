/// The aspect ratio of a generated image.
enum ImageAspectRatio {
  /// 21:9, ultra wide.
  ratio21x9('21:9'),

  /// 16:9, wide.
  ratio16x9('16:9'),

  /// 3:2, landscape photo.
  ratio3x2('3:2'),

  /// 5:4, near square landscape.
  ratio5x4('5:4'),

  /// 1:1, square. The API default.
  square('1:1'),

  /// 4:5, near square portrait.
  ratio4x5('4:5'),

  /// 2:3, portrait photo.
  ratio2x3('2:3'),

  /// 9:16, tall.
  ratio9x16('9:16'),

  /// 9:21, ultra tall.
  ratio9x21('9:21');

  const ImageAspectRatio(this.value);

  /// The value sent to the API.
  final String value;
}

/// The file format of an output image.
enum OutputFormat {
  /// PNG. The API default.
  png,

  /// JPEG. Not supported by Remove Background.
  jpeg,

  /// WebP.
  webp;

  /// The value sent to the API.
  String get value => name;
}

/// A style that guides the model towards a look.
enum StylePreset {
  /// Enhance.
  enhance('enhance'),

  /// Anime.
  anime('anime'),

  /// Photographic.
  photographic('photographic'),

  /// Digital art.
  digitalArt('digital-art'),

  /// Comic book.
  comicBook('comic-book'),

  /// Fantasy art.
  fantasyArt('fantasy-art'),

  /// Line art.
  lineArt('line-art'),

  /// Analog film.
  analogFilm('analog-film'),

  /// Neon punk.
  neonPunk('neon-punk'),

  /// Isometric.
  isometric('isometric'),

  /// Low poly.
  lowPoly('low-poly'),

  /// Origami.
  origami('origami'),

  /// Modeling compound, like clay.
  modelingCompound('modeling-compound'),

  /// Cinematic.
  cinematic('cinematic'),

  /// 3D model.
  model3d('3d-model'),

  /// Pixel art.
  pixelArt('pixel-art'),

  /// Tile texture.
  tileTexture('tile-texture');

  const StylePreset(this.value);

  /// The value sent to the API.
  final String value;
}

/// A Stable Diffusion 3.5 model.
///
/// Use one of the constants, or [Sd35Model.new] for a model this version of
/// the SDK doesn't list yet.
extension type const Sd35Model(String value) {
  /// SD 3.5 Large. The API default. 6.5 credits per image.
  static const large = Sd35Model('sd3.5-large');

  /// SD 3.5 Large Turbo. Faster than Large. 4 credits per image.
  static const largeTurbo = Sd35Model('sd3.5-large-turbo');

  /// SD 3.5 Medium. 3.5 credits per image.
  static const medium = Sd35Model('sd3.5-medium');

  /// SD 3.5 Flash. A distilled Medium that needs 4 steps. 2.5 credits per
  /// image. Listed in the docs and pricing, though not yet in the API's
  /// published model list.
  static const flash = Sd35Model('sd3.5-flash');
}

/// Where the light comes from when relighting a subject.
enum LightSourceDirection {
  /// From the left.
  left,

  /// From the right.
  right,

  /// From above.
  above,

  /// From below.
  below;

  /// The value sent to the API.
  String get value => name;
}
