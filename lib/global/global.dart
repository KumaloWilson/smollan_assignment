enum MessageType {
  text,
  image
}

enum ModelOrigin {
  preset,
  local,
  hf,
}

enum DownloadStatus {
  pending,
  inProgress,
  completed,
  failed,
  canceled
}