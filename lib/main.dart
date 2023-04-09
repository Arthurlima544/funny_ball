import 'package:flutter/material.dart';
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
  late RiveAnimationController _controller;

  final bool _isPlaying = false;
  final an1 = SimpleAnimation("StartLoading");
  final an2 = SimpleAnimation("Loading");
  final an3 = SimpleAnimation("FinishLoading");

  @override
  void initState() {
    super.initState();

    _controller = OneShotAnimation(
      'Character',
      autoplay: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const RiveAnimation.asset(
                'assets/3897-8156-ball-loader.riv',
                animations: ["Loading", "StartLoading"],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
