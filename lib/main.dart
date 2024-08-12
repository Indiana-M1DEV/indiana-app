import 'package:Indiana/app/views/map_page.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:logging/logging.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:Indiana/app/config/routes.dart';
import 'package:Indiana/app/views/home_page.dart';
import 'package:Indiana/app/utils/router.dart' as router;
import 'package:Indiana/app/config/config_file.dart' as config;
import 'package:Indiana/app/themes/colors.dart' as app_colors;
import 'package:Indiana/app/themes/fonts.dart' as app_fonts;

Future<void> main() async {
  if (config.LogConfig.enableLogging) {
    Logger.root.level = Level
        .ALL; // Includes all severity levels (see at: https://pub.dev/packages/logging)
    Logger.root.onRecord.listen((record) {
      if (config.LogConfig.logToFile) {
        _logToFile(record);
      }

      print('${record.level.name}: \n${record.time}: \n${record.message}');
    });
  }

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: app_colors.ErrorColors.primaryBackgroundColor,
        body: Center(
          child: Text(
            'Error: ${details.exception}',
            style: app_fonts.ErrorFonts.errorMessage,
          ),
        ),
      ),
    );
  };

  Logger logger = Logger('Indiana App');
  logger.info('Starting app...');
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

void _logToFile(LogRecord record) {
  print('Writing log to file: ${record.level.name}: ${record.message}');
}

void setupCamera() {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = availableCameras();
  cameras.then((value) {
    print('Camera: $value');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: config.appName,
      home: const HomePage(),
      onGenerateRoute: router.generateRoute,
      initialRoute: GenericRoutes.homeRoute,
    );
  }
}
