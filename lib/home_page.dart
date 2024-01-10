import 'package:demoproject/widgets/custom_drawer.dart';
import 'package:demoproject/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
GlobalKey<ScaffoldState> scaffoldKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color.fromARGB(255, 238, 230, 230),
      appBar: MediaQuery.sizeOf(context).width - 20 < 900 ? AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          child: const Icon(Icons.list)),
      ) : null,
      body: HomeViewBody(),
    );
  }
}
