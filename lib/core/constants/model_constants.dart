class ModelConstants {
  static const int MIN_STORAGE_REQUIRED = 1024 * 1024 * 100; // 100MB
  static const Duration DOWNLOAD_TIMEOUT = Duration(minutes: 30);
  static const int MAX_RETRY_ATTEMPTS = 3;
  static const Duration RETRY_DELAY = Duration(seconds: 5);
}