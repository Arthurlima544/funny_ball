import 'package:flutter/material.dart';
import 'package:mv_vamp/app_sizes.dart';
import 'package:rive/rive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InitialPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  final an1 = SimpleAnimation("StartLoading");
  final an2 = SimpleAnimation("Loading");
  final an3 = SimpleAnimation("FinishLoading");
  AppSizes appSizes = AppSizes();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    appSizes.getCurrentSize(context);
    return Scaffold(
      body: Stack(
        children: const [
          RiveAnimation.asset(
            'assets/3897-8156-ball-loader.riv',
            animations: ["Loading", "StartLoading"],
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
