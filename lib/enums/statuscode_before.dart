enum StatusCode {
  badRequest,
  unauthorized,
  forbidden,
  notFound,
  internalServerError,
  notImplemented;
}

extension StatusCodeExt on StatusCode {
  int get code {
    switch(this) {
      case StatusCode.badRequest:
        return 400;
      case StatusCode.unauthorized:
        return 401;
      case StatusCode.forbidden:
        return 403;
      case StatusCode.notFound:
        return 404;
      case StatusCode.internalServerError:
        return 500;
      case StatusCode.notImplemented:
        return 501;
    }
  }

  String get description {
    switch(this) {
      case StatusCode.badRequest:
        return 'Bad request';
      case StatusCode.unauthorized:
        return 'Unauthorized';
      case StatusCode.forbidden:
        return 'Forbidden';
      case StatusCode.notFound:
        return 'Not found';
      case StatusCode.internalServerError:
        return 'Internal server error';
      case StatusCode.notImplemented:
        return 'Not implemented';
    }
  }

  String get codeToString {
    return 'StatusCode($code, $description)';
  }
}