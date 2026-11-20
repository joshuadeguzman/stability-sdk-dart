/// Checks arguments before a request is sent, so mistakes fail fast with a
/// clear error. Internal, not exported.
library;

// ignore_for_file: public_member_api_docs

import 'models/options.dart';

const maxSeed = 4294967294;
const maxPromptLength = 10000;

void checkPrompt(String prompt, {String name = 'prompt'}) {
  if (prompt.trim().isEmpty) {
    throw ArgumentError.value(prompt, name, 'must not be empty');
  }
  checkLength(prompt, name);
}

void checkLength(String? text, String name) {
  if (text != null && text.length > maxPromptLength) {
    throw ArgumentError.value(
      '${text.substring(0, 20)}...',
      name,
      'must be at most $maxPromptLength characters',
    );
  }
}

void checkRange(num? value, String name, num min, num max) {
  if (value != null && (value < min || value > max)) {
    throw RangeError.value(value, name, 'must be between $min and $max');
  }
}

void checkSeed(int? seed) => checkRange(seed, 'seed', 0, maxSeed);

/// Builds form fields, skipping null values.
Map<String, String> form(Map<String, Object?> values) => {
      for (final MapEntry(:key, :value) in values.entries)
        if (value != null)
          key: switch (value) {
            ImageAspectRatio() => value.value,
            OutputFormat() => value.value,
            StylePreset() => value.value,
            LightSourceDirection() => value.value,
            _ => '$value',
          },
    };
