import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors_plus/sensors_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SensorApp(),
    );
  }
}

class SensorApp extends StatelessWidget {
  const SensorApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Orientation LandScape
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);

    // MediaQuery의 size로 디바이스 화면의 width, height를 얻을 수 있다.
    final centerX = MediaQuery.of(context).size.width / 2 - 50;
    final centerY = MediaQuery.of(context).size.height / 2 - 50;

    return Scaffold(
      body: Stack(
        children: [
          StreamBuilder<AccelerometerEvent>(
            stream: accelerometerEventStream(),
            builder: (context, asyncSnapshot) {
              if (!asyncSnapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              final event = asyncSnapshot.data!;

              return Positioned(
                left: centerX + event.y * 20,
                top: centerY + event.x * 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    // Decoration 사용중이면 Container의 Color Attribute를 제거한다.
                    shape: BoxShape.circle,
                  ),
                  width: 100,
                  height: 100,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
