class DatabaseException implements Exception {
  final String message;
  DatabaseException(this.message);
  @override
  String toString() => message;
}
