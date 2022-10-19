class JsonUtils {
  static double? parseDouble(String? source) {
    return source == null ? null : double.parse(source);
  }

  static int? parseInt(String? source) {
    return source == null ? null : int.parse(source);
  }
}
