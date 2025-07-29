import 'package:flutter/material.dart';
import 'global/global.parameters.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); 

  if (!kIsWeb) {
    await dotenv.load(fileName: ".env"); 
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: GlobalParameters.routes,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 22, color: Colors.deepOrange),
        ),
      ),
    );
  }
}
