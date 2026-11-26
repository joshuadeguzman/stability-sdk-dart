/// An error returned by the Stability AI API.
///
/// Catch a subclass to handle one kind of error, or this class for all of
/// them. Include [id] when you contact Stability AI support.
sealed class StabilityException implements Exception {
  const StabilityException({
    required this.statusCode,
    this.id,
    this.name,
    this.errors = const [],
  });

  /// Creates the right subclass for an HTTP [statusCode].
  factory StabilityException.fromResponse({
    required int statusCode,
    String? id,
    String? name,
    List<String> errors = const [],
  }) {
    return switch (statusCode) {
      400 => BadRequestException(id: id, name: name, errors: errors),
      401 => UnauthorizedException(id: id, name: name, errors: errors),
      402 => InsufficientCreditsException(id: id, name: name, errors: errors),
      403 => ContentModerationException(id: id, name: name, errors: errors),
      404 => NotFoundException(id: id, name: name, errors: errors),
      413 => PayloadTooLargeException(id: id, name: name, errors: errors),
      422 => UnprocessableException(id: id, name: name, errors: errors),
      429 => RateLimitException(id: id, name: name, errors: errors),
      _ => ServerException(
          statusCode: statusCode,
          id: id,
          name: name,
          errors: errors,
        ),
    };
  }

  /// The HTTP status code.
  final int statusCode;

  /// The error id. Include it in support requests.
  final String? id;

  /// A short machine-readable name, for example `bad_request`.
  final String? name;

  /// Human-readable messages explaining what went wrong.
  final List<String> errors;

  @override
  String toString() {
    final details = errors.isEmpty ? '' : ': ${errors.join('; ')}';
    return 'StabilityException($statusCode${name == null ? '' : ' $name'})'
        '$details';
  }
}

/// 400. One or more parameters are invalid. See [errors].
final class BadRequestException extends StabilityException {
  /// Creates a [BadRequestException].
  const BadRequestException({super.id, super.name, super.errors})
      : super(statusCode: 400);
}

/// 401. The API key is missing or invalid.
final class UnauthorizedException extends StabilityException {
  /// Creates an [UnauthorizedException].
  const UnauthorizedException({super.id, super.name, super.errors})
      : super(statusCode: 401);
}

/// 402. The account doesn't have enough credits.
final class InsufficientCreditsException extends StabilityException {
  /// Creates an [InsufficientCreditsException].
  const InsufficientCreditsException({super.id, super.name, super.errors})
      : super(statusCode: 402);
}

/// 403. The request was flagged by content moderation.
final class ContentModerationException extends StabilityException {
  /// Creates a [ContentModerationException].
  const ContentModerationException({super.id, super.name, super.errors})
      : super(statusCode: 403);
}

/// 404. For example, an async result that doesn't exist or has expired.
final class NotFoundException extends StabilityException {
  /// Creates a [NotFoundException].
  const NotFoundException({super.id, super.name, super.errors})
      : super(statusCode: 404);
}

/// 413. The request body is too large.
final class PayloadTooLargeException extends StabilityException {
  /// Creates a [PayloadTooLargeException].
  const PayloadTooLargeException({super.id, super.name, super.errors})
      : super(statusCode: 413);
}

/// 422. The request was valid but couldn't be processed, for example an
/// unsupported image or language.
final class UnprocessableException extends StabilityException {
  /// Creates an [UnprocessableException].
  const UnprocessableException({super.id, super.name, super.errors})
      : super(statusCode: 422);
}

/// 429. Too many requests. The API allows 150 requests in 10 seconds, then
/// blocks requests for 60 seconds.
final class RateLimitException extends StabilityException {
  /// Creates a [RateLimitException].
  const RateLimitException({super.id, super.name, super.errors})
      : super(statusCode: 429);
}

/// 500 or another unexpected status. For 5xx errors, retry the request.
final class ServerException extends StabilityException {
  /// Creates a [ServerException].
  const ServerException({
    required super.statusCode,
    super.id,
    super.name,
    super.errors,
  });
}
