import 'package:demoproject/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Responcive Text Example',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ahmed Mohmmed Kirsha',
              style: TextStyle(
                fontSize: getResponsiveFontsize(context, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Software Engnieer , IS Student',
              style: TextStyle(
                fontSize: getResponsiveFontsize(context, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

double getResponsiveFontsize(BuildContext context, {required double fontSize}) {
  double scalFactor = getScalFactor(context);
  double responsiveFontsize = fontSize * scalFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontsize.clamp(lowerLimit, upperLimit);
}

double getScalFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
