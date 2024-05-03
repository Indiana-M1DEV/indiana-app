import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static String get apiUrl => dotenv.env['AUTH_API_URL'] ?? '';
}

class LogConfig {
  static const bool enableLogging = true;
  static const bool logToFile = true;
  static const String logFilePath = 'var/log/application.log';
}

// Ui Constants
const String appName = 'Indiana Geocaching';

// Feature Flags
const bool enableARFeature = false;
