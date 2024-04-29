import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static var _t = Translations("en_us") +
      {
        "en_us": "Hello!",
        "es": "¡Hola!",
        "hi": "नमस्ते",
      } +
      {
        "en_us": "My App",
        "es": "Mi App",
        "hi": "मेरा ऐप",
      };

  String get i18n => localize(this, _t);
}
